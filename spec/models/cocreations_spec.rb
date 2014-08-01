require 'spec_helper'

describe Cocreation do
  subject { Cocreation.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:cocreation) { Cocreation.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(cocreation.image).to be_present }
  end
end
