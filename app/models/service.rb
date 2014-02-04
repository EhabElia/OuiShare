class Service < ActiveRecord::Base
  belongs_to :language

  mount_uploader :image, ImageUploader
end
