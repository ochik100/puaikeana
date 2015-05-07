class VicePresident < ActiveRecord::Base

	belongs_to :nominee

	scope :sorted, lambda { order("vice_presidents.nominee_id ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
