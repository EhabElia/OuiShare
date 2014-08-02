require 'spec_helper'

describe FundedPage do
  subject { FundedPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:about) { FundedPage.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(about.image).to be_present }
  end
end
