class Comment < ApplicationRecord
   belongs_to :project
    mount_uploader :image, ImageUploader
    has_many :replies, dependent: :destroy

end
