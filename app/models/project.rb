class Project < ApplicationRecord
  mount_uploader :document, ImageUploader
  has_many :comments, dependent: :destroy
  belongs_to :category
  has_many :members
  has_many :users
end
