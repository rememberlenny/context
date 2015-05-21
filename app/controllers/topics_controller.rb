class TopicsController < ApplicationController

  def featured
  end

  def index
    @stories = Story.where(:topic_id => params[:id])
  end

end
