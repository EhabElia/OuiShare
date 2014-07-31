require 'spec_helper'

describe About do
  subject { About.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    it { expect(subject.image).to be_present }
  end
end
