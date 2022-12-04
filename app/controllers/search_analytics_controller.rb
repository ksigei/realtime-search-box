class SearchAnalyticsController < ApplicationController
  def index
    @search_analytics = SearchAnalytics.all.order(count: :desc)
  end
end
