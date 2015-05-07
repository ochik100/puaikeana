class CommunityServiceChairsController < ApplicationController
  layout 'admin'

  def index
    @community_service_chairs = Nominee.where(community_candidate: true)
  end
end
