class Secretary < ActiveRecord::Base
	belongs_to :nominee

	scope :sorted, lambda { order("secretaries.nominee_id ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
