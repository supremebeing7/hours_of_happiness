require 'spec_helper'

describe Place do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end
