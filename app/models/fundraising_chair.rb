class FundraisingChair < ActiveRecord::Base
	belongs_to :nominee

	scope :sorted, lambda { order("fundraising_chairs.nominee_id ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
