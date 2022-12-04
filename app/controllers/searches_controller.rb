class SearchesController < ApplicationController
  def create
    @search = Search.new(search_params)
    @search.save
    redirect_to search_analytics_path
  end

end
