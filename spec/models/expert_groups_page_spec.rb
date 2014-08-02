require 'spec_helper'

describe ExpertGroupsPage do
  subject { ExpertGroupsPage.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:exp_groups_page) { ExpertGroupsPage.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(exp_groups_page.image).to be_present }
  end
end
