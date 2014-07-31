require 'spec_helper'

describe Activity do
  subject(:activity) { Activity.make! }

  it { should be_valid }

  describe 'Associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    it { expect(subject.image).to be_present }
  end
end
