class Article < ApplicationRecord
  has_one_attached :cover_image
  has_one :content, as: :contentable, dependent: :destroy
  accepts_nested_attributes_for :content, allow_destroy: true

  delegate :comments, to: :content, allow_nil: true

  enum :status, [ :draft, :waiting_for_review, :published ]
end
