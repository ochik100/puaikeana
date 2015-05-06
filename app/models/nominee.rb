class Nominee < ActiveRecord::Base

	has_many :presidents

	scope :sorted, lambda { order("nominees.last_name ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
