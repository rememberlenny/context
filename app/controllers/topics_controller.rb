class TopicsController < ApplicationController

  def featured
  end

  def index
    @stories = Story.where(:topic => params[:id])
  end

end
