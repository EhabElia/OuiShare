require 'spec_helper'

describe FaqQuestion do
  subject { FaqQuestion.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end
end
