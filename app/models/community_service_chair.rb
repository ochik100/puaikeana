class CommunityServiceChair < ActiveRecord::Base
	belongs_to :nominee

	scope :sorted, lambda { order("community_service_chairs.nominee_id ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
