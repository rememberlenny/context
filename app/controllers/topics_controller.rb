class TopicsController < ApplicationController

  def featured
  end

  def index
    @topics = Story.where(:topic => params[:id])
  end

end
