require 'spec_helper'

describe About do
  subject { About.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:about) { About.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(about.image.url).to be_present }
  end
end
