class SearchAnalyticsController < ApplicationController
  def index
    @search_analytics = SearchAnalytics.all.order(count: :desc)
  end

  def update
    @search_analytics = SearchAnalytics.find_by(query: params[:query])
    @search_analytics.count += 1
    @search_analytics.save
  end
end
