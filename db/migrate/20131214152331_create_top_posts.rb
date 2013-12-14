class CreateTopPosts < ActiveRecord::Migration
  def change
    create_table :top_posts do |t|
      t.string :post
      t.integer :micropost_id

      t.timestamps
    end
  end
end
