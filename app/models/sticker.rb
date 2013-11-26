class Sticker < ActiveRecord::Base
	validates :title, :URL, presence: true
	validates :size, presence: true, inclusion: { in: %w(small big), message: "%{value} is not a valid size" }
	scope :is_big, -> { where(size: "big") }
	scope :is_small, -> { where(size: "small") }
end
