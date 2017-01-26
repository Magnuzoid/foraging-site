class Place < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :lat, latitude: true, presence: true
  validates :lng, longitude: true, presence: true
  belongs_to :user

  def self.search(query)
      # where(:title, query) -> This would return an exact match of the query
      if query.blank?
        where(nil)
      else
        where("title like ?", "%#{query.downcase}%")
      end
  end
end
