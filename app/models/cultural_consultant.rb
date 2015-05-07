class CulturalConsultant < ActiveRecord::Base
	belongs_to :nominee

	scope :sorted, lambda { order("cultural_consultants.nominee_id ASC")}
	scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}
end
