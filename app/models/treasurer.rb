class Treasurer < ActiveRecord::Base
	belongs_to :nominee

	scope :sorted, lambda { order("treasurers.nominee_id ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
