class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :comments
  scope :active, -> { joins(:category).merge(Category.active) }
end
