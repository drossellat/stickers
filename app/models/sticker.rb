class Sticker < ActiveRecord::Base
    validates :title, :URL, presence: true
    validates :size, presence: true, inclusion: { in: %w(small big), message: "%{value} is not a valid size" }
    scope :is_big, -> { where(size: "big") }
    scope :is_small, -> { where(size: "small") }

class << self
    def find_by_shortURL_or_id key
      if key.match(UUID_REGEX)
       self.find_by_id(key)
      elsif key.match(SHORT_REGEX)
         self.find_by_shortURL(key)
      end
    end
   end

   #Adding random shortURL
  before_save(on: :create) do
    self.shortURL = (0...5).map{ ALPHABET[rand(ALPHABET.length)] }.join
  end
end
