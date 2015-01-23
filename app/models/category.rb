class Category < ActiveRecord::Base
  has_many :posts

  scope :active, -> { where(active: true) }
end
