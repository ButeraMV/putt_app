require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  it { should belong_to :contest }
  it { should belong_to :putter }
  it { should validate_presence_of :active }
end
