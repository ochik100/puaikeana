class BallotsController < ApplicationController

  layout 'admin'
  def index
  	@presidents = Nominee.where(president_candidate: true)
  	@vice_presidents = Nominee.where(vp_candidate: true)
  	@secretaries = Nominee.where(secretary_candidate: true)
  	@treasurers = Nominee.where(treasurer_candidate: true)
  	@marketing_chairs = Nominee.where(marketing_candidate: true)
  	@luau_chairs = Nominee.where(luau_candidate: true)
  	@fundraising_chairs = Nominee.where(fundraising_candidate: true)
  	@community_service_chairs = Nominee.where(community_candidate: true)
  	@cultural_consultants = Nominee.where(cultural_candidate: true)
  end

  def vote
  end
end
