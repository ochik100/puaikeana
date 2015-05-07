class FundraisingChairsController < ApplicationController
  layout 'admin'

  def index
    @fundraising_chairs = Nominee.where(fundraising_candidate: true)
  end
end
