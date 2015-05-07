class Nominee < ActiveRecord::Base

	has_many :presidents
	has_many :vice_presidents
	has_many :secretaries
	has_many :treasurers

	scope :sorted, lambda { order("nominees.last_name ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
