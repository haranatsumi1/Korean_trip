class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  belongs_to :user
  belongs_to :area

  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }
end
