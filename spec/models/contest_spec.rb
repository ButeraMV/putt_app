require 'rails_helper'

RSpec.describe Contest, type: :model do
  it { should validate_presence_of :name }
end
