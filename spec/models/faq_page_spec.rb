require 'spec_helper'

describe FaqPage do
  subject { FaqPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:about) { FaqPage.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(about.image).to be_present }
  end
end
