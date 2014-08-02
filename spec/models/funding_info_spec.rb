require 'spec_helper'

describe FundingInfo do
  subject { FundingInfo.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:resource) { FundingInfo.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(resource.image.url).to be_present }
  end
end
