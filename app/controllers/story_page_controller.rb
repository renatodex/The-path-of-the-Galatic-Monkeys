class StoryPageController < ApplicationController
  layout "story_page"

  def index
    @story_pages = StoryPage.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @story_pages }
    end
  end
end
