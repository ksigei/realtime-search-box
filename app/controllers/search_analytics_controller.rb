class SearchAnalyticsController < ApplicationController
  def index
    @search_analytics = SearchAnalytic.all.order(count: :desc)
  end

  def update
    @search_analytics = SearchAnalytic.find_by(query: params[:query])
    @search_analytics.count += 1
    @search_analytics.save
  end
end
