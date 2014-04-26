require 'spec_helper'

describe Place do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should have_many :happy_hours }
  it { should have_many :ratings }
  it { should have_many :reports }
end
