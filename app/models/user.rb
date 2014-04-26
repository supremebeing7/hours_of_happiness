class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :username, :email, :password, :password_confirmation, presence: true
  validates :username, :email, uniqueness: true
  Roles = [ :admin, :default ]
end
