require 'spec_helper'

describe HappyHour do
  it { should validate_presence_of :start_time }
  it { should validate_presence_of :end_time }
  it { should belong_to :place }
end
