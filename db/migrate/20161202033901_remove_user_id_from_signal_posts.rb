class RemoveUserIdFromSignalPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :signal_posts, :userId, :integer
  end
end
