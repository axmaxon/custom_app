require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:starttime) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:organizermail) }
  end
end
