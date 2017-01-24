class Place < ApplicationRecord
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
