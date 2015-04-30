class Nominee < ActiveRecord::Base
	scope :sorted, lambda { order("nominees.last_name ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
