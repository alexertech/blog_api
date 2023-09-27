class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :views_count
      t.integer :read_time

      t.timestamps
    end
  end
end
