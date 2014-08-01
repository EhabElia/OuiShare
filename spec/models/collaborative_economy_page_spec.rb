require 'spec_helper'

describe CollaborativeEconomyPage do
  subject { CollaborativeEconomyPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:collaborative_economy_page) { CollaborativeEconomyPage.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(collaborative_economy_page.image.url).to be_present }
  end
end
