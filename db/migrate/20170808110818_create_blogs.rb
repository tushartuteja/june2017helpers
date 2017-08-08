class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.boolean :published

      t.timestamps null: false
    end
  end
end
