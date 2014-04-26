require 'spec_helper'

describe Report do
  it { should validate_presence_of :place_id }
  it { should validate_presence_of :description }
  it { should belong_to :place }
  it { should belong_to :user }
end
