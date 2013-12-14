class CreateTopPosts < ActiveRecord::Migration
  def change
    create_table :top_posts do |t|
      t.string :post
      t.integer :subPostsCount
      t.integer :subPostsScore

      t.timestamps
    end
  end
end
