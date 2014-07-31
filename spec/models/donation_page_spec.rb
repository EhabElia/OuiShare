require 'spec_helper'

describe DonationPage do
  subject { DonationPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    it { expect(subject.image1).to be_present }
    it { expect(subject.image2).to be_present }
  end
end
