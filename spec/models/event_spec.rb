require 'spec_helper'

describe Event do
  let(:event) { Event.make! }

  it { expect(event).to be_valid }

  describe 'associations' do
    it { should belong_to :language }
  end

  describe 'image' do
    let(:image_event) { Event.make!(service1_image: File.open("#{Rails.root}/spec/fixtures/image.png"),
                                    service2_image: File.open("#{Rails.root}/spec/fixtures/image.png"),
                                    service3_image: File.open("#{Rails.root}/spec/fixtures/image.png"),
                                    image: File.open("#{Rails.root}/spec/fixtures/image.png"),
                                    home_image: File.open("#{Rails.root}/spec/fixtures/image.png") )}

    it 'expect all the images to be present' do
      expect(image_event.image).to be_present
      expect(image_event.home_image).to be_present
      expect(image_event.service1_image).to be_present
      expect(image_event.service2_image).to be_present
      expect(image_event.service3_image).to be_present
    end
  end

  describe 'scopes' do
    describe '.visible' do
      let(:invisible_event) { Event.make! visible: false }

      it { expect(Event.visible).not_to include(:invisible_event) }
    end

    describe '.visible_on_menu' do
      let(:invisible_on_menu) { Event.make! display_on_menu: false }

      it { expect(Event.visible_on_menu).not_to include(:invisible_on_menu) }
    end

    describe '.next' do
      let (:past_event) { Event.make! date_start: (Time.now - 5.days), date_end: (Time.now - 3.days) }

      it { expect(Event.next).to include(event) }
      it { expect(Event.next).not_to include(past_event) }
    end
  end
end
