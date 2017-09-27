class TrendingController < ApplicationController
  def index
    @top10 = Play.top10
    
  end
end
