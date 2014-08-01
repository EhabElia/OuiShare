require 'spec_helper'

describe CommunityPage do
  subject { CommunityPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:community_page) { CommunityPage.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(community_page.image.url).to be_present }
  end
end
