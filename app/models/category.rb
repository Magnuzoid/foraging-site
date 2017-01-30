class Category < ApplicationRecord
  validates :name, uniqueness: true, length: {minimum: 3, maximum: 24}
  has_many :places
end
