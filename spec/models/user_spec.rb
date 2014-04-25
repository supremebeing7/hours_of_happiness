require 'spec_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  # Removed username and password validations because it interferes with Google / omniauth login
  # it { should validate_presence_of :password }
  # it { should validate_presence_of :password_confirmation }
  # it { should validate_presence_of :username }
  # it { should validate_uniqueness_of :username }
end
