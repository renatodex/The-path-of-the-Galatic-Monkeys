class CreateStoryPages < ActiveRecord::Migration
  def change
    create_table :story_pages do |t|
      t.string :nome
      t.integer :wl
      t.integer :wm
      t.integer :wr
      t.string :left
      t.string :main
      t.string :right
      t.string :titulo
      t.text :desc

      t.timestamps
    end
  end
end
