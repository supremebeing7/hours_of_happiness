class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, uniqueness: true, presence: true
  # Removed password validation because it interferes with Google / omniauth login
  # validates :password, :password_confirmation, presence: true

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(name: data["name"],
          provider:access_token.provider,
          email: data["email"],
          photo_url: data["image"].sub('https:', ''),
          uid: access_token.uid ,
          password: Devise.friendly_token[0,20],
        )
        sliced_email = data["email"].slice(0...(data["email"].index('@')))
        username = (sliced_email + user.id.to_s).parameterize
        user.update(username: username)
        binding.pry
        return user
      end
    end
  end
end
