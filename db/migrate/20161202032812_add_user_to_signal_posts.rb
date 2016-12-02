class AddUserToSignalPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :signal_posts, :user, foreign_key: true
	add_index :signal_posts, [:user_id, :created_at]
  end
end
