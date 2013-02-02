class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :description
      t.text :body
      t.timestamps
    end
  end
end
