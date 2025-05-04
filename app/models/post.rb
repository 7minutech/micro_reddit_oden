class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5, maximum: 150 }
  validates :subtitle, length: { minimum: 5, maximum: 50 }
  validates :url, length: { minimum: 3, maximum: 30 }
end
