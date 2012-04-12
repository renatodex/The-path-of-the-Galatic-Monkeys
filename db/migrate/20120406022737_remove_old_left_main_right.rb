class RemoveOldLeftMainRight < ActiveRecord::Migration
  def up
    remove_column :story_pages, :left
    remove_column :story_pages, :main
    remove_column :story_pages, :right
  end

  def down
    add_column :story_pages, :left, :string
    add_column :story_pages, :main, :string
    add_column :story_pages, :right, :string
  end
end