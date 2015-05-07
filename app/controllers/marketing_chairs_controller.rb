class MarketingChairsController < ApplicationController
  layout 'admin'

  def index
    @marketing_chairs = Nominee.where(marketing_candidate: true)
  end
end
