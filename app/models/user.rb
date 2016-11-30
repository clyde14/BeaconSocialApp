class User < ApplicationRecord
	validates :username, presence: true
	validates :email, presence: true
	has_many :signal_posts
end
