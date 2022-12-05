class SearchAnalyticsController < ApplicationController
  def index
    @search_analytics = SearchAnalytic.all.order(count: :desc)
  end

  def update
    @search_analytics = SearchAnalytic.find_by(query: params[:query])
    @search_analytics.count += 1
    @search_analytics.save
  end

  def create
    @search_analytics = SearchAnalytic.new(search_analytic_params)
    @search_analytics.save
    redirect_to search_analytics_path
  end

  private
  
  def search_analytic_params
    params.require(:search_analytic).permit(:query, :count, :user_id)
  end
end
