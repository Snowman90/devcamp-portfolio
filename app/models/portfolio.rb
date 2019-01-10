class Portfolio < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :body, :main_image, :thumb_image, presence: true
end
