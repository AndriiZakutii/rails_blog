class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :category
  scope :ordered, -> { order(id: :desc) }
  scope :with_categories, -> { includes(:category) }
  validates :title, presence: true, length: {minimum: 2}
  validates :text, presence: true, length: {minimum: 10}
end
