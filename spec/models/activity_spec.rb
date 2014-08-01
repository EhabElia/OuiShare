require 'spec_helper'

describe Activity do
  subject{ Activity.make! }

  it { should be_valid }

  describe 'Associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:activity) { Activity.make! image: File.open("#{Rails.root}/spec/fixtures/image.png") }
    it { expect(activity.image.url).to be_present }
  end
end
