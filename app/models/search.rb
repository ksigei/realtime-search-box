class Search < ApplicationRecord
    belongs_to :user
    has_many :search_analytics

    def self.search(query)
        where("query like ?", "%#{query}%")
    end
end
