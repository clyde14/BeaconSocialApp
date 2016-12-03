class User < ApplicationRecord
	has_many :signal_posts, dependent: :destroy
	before_save { username.downcase! }
	validates :username, presence: true, length: { maximum: 40 },
						 uniqueness: { case_sensitive: false }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
					  format: { with: VALID_EMAIL_REGEX }
	validates :password, presence: true, length: { minimum: 6 }
	has_secure_password
end
