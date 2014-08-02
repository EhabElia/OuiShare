require 'spec_helper'

describe FundedPage do
  subject { FundedPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:resource) { FundedPage.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(resource.image.url).to be_present }
  end
end
