class Search < ApplicationRecord
    belongs_to :user
    has_many :search_analytics
    validates :query, presence: true

    def self.search(query)
        where("query like ?", "%#{query}%")
    end
end
