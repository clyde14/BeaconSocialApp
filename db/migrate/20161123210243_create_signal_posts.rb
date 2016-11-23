class CreateSignalPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :signal_posts do |t|
      t.text :content
      t.integer :userId

      t.timestamps
    end
  end
end
