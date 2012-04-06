class StoryPageController < ApplicationController
  layout "story_page"

  def index
    @story_pages = StoryPage.all
  end
end
