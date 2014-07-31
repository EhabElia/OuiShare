require 'spec_helper'

describe ArticlesSection do
  subject { ArticlesSection.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end
end
