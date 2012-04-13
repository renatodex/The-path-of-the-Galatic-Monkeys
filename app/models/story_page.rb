class StoryPage < ActiveRecord::Base
  attr_accessible :desc, :left, :main, :nome, :right, :titulo, :wl, :wm, :wr
  has_attached_file :left, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :main, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :right, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  def left_url_full
    left.url
  end
  
  def main_url_full
    main.url
  end
  
  def right_url_full
    right.url
  end

  def left_width
    get_image_width('left')
  end
  
  def main_width
    get_image_width('main')
  end
  
  def right_width
    get_image_width('right')
  end
  

  def get_image_width(file_field)
    image_geo = Paperclip::Geometry.from_file(eval(file_field))
    image_geo.width
  end

  def next
    StoryPage.where('story_pages.id > ?', self.id).first
  end
end
