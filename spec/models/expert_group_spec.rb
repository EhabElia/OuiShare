require 'spec_helper'

describe ExpertGroup do
  subject { ExpertGroup.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
    it { should have_and_belong_to_many :users }
  end
end
