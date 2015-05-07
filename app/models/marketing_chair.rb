class MarketingChair < ActiveRecord::Base
	belongs_to :nominee

	scope :sorted, lambda { order("marketing_chairs.nominee_id ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
