require 'spec_helper'

describe Community do
  subject { Community.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
    it { should belong_to :region }
    it { should have_and_belong_to_many :users }
  end
end
