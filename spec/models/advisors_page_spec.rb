require 'spec_helper'

describe AdvisorsPage do
  subject { AdvisorsPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end
end
