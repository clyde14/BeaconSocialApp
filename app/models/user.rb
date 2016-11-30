class User < ApplicationRecord
	validates :username, presence: true
	has_many :signal_posts
end
