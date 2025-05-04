class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5, maximum: 150 }
  validates :subtitle, length: { minimum: 5, maximum: 50 }, allow_nil: true
  validates :url, length: { minimum: 3, maximum: 30 },
            format: URI::DEFAULT_PARSER.make_regexp(%w[http https]), allow_nil: true
end
