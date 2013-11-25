class Sticker < ActiveRecord::Base
	scope :is_free, -> { where(free: true) }
	scope :is_not_free, -> { where(free: false) }
	scope :is_big, -> { where(size: "big") }
	scope :is_small, -> { where(size: "small") }
end
