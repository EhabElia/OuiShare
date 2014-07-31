require 'spec_helper'

describe ContactPage do
  subject { ContactPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end
end
