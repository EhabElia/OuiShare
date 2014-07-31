require 'spec_helper'

describe CocreationPage do
  subject { CocreationPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    it { expect(subject.image).to be_present }
  end
end
