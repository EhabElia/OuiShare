require 'spec_helper'

describe EventsSection do
  subject { EventsSection.make! }

  it { should be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end
end
