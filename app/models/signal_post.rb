class SignalPost < ApplicationRecord
	validates :content, length: { maximum: 200 }
end
