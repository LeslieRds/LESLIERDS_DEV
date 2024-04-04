class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :content, presence: true
  validates :image, presence: true
  validates :category, presence: true
end
