class AddAttachmentRightToStoryPage < ActiveRecord::Migration
  def self.up
    add_column :story_pages, :right_file_name, :string
    add_column :story_pages, :right_content_type, :string
    add_column :story_pages, :right_file_size, :integer
    add_column :story_pages, :right_updated_at, :datetime
  end

  def self.down
    remove_column :story_pages, :right_file_name
    remove_column :story_pages, :right_content_type
    remove_column :story_pages, :right_file_size
    remove_column :story_pages, :right_updated_at
  end
end
