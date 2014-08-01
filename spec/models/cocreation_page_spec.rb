require 'spec_helper'

describe CocreationPage do
  subject { CocreationPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:cocreation_page) { CocreationPage.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(cocreation_page.image.url).to be_present }
  end
end
