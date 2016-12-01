class User < ApplicationRecord
	validates :username, presence: true, length: { maximum: 40 }
	validates :email, presence: true, length: { maximum: 255 }
	has_many :signal_posts
end
