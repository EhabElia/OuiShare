require 'spec_helper'

describe FaqPage do
  subject { FaqPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:resource) { FaqPage.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(resource.image.url).to be_present }
  end
end
