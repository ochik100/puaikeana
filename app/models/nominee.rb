class Nominee < ActiveRecord::Base

	has_many :presidents
	has_many :vice_presidents
	has_many :secretaries
	has_many :treasurers
	has_many :marketing_chairs
	has_many :luau_chairs
	has_many :fundraising_chairs
	has_many :community_service_chairs
	has_many :cultural_consultants

	scope :sorted, lambda { order("nominees.last_name ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
