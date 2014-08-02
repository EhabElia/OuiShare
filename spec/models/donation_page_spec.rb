require 'spec_helper'

describe DonationPage do
  subject { DonationPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:donation_page) { DonationPage.make! image1: File.open("#{Rails.root}/spec/fixtures/image.png"),
                                             image2: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(donation_page.image1.url).to be_present }
    it { expect(donation_page.image2.url).to be_present }
  end
end
