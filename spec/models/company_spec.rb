require 'rails_helper'

describe Company do
  it { should have_many(:users) }
  
  it { should validate_presence_of(:name) }
end