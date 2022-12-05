class SearchAnalytic < ApplicationRecord
    belongs_to :user
    has_many :searches
    validates :query, presence: true
    validates :count, presence: true

    # def self.search(query)
    #     where("query like ?", "%#{query}%")
    # end
end

