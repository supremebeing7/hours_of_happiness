require 'spec_helper'

describe Rating do
  it { should belong_to :place }
  it { should validate_presence_of :score }
  it { should validate_numericality_of :score }
  it { should validate_presence_of :review }
  it { should validate_presence_of :place_id }
end
