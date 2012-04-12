class StoryPageController < ApplicationController
  layout "story_page"

  def index
    @story_pages = StoryPage.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json  {
        render :json => @story_pages.to_json(:methods => [:left_url_full, :main_url_full, :right_url_full, :next])
      }
    end
  end
end
