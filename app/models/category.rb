class Category < ApplicationRecord
  belongs_to :places
  validates :name, uniqueness: true, length: {minimum: 3, maximum: 24}
end
