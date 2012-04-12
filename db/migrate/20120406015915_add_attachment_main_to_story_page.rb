class AddAttachmentMainToStoryPage < ActiveRecord::Migration
  def self.up
    add_column :story_pages, :main_file_name, :string
    add_column :story_pages, :main_content_type, :string
    add_column :story_pages, :main_file_size, :integer
    add_column :story_pages, :main_updated_at, :datetime
  end

  def self.down
    remove_column :story_pages, :main_file_name
    remove_column :story_pages, :main_content_type
    remove_column :story_pages, :main_file_size
    remove_column :story_pages, :main_updated_at
  end
end
