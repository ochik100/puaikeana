class VicePresidentsController < ApplicationController
  layout 'admin'

  def index
    @vice_presidents = Nominee.where(vp_candidate: true)
  end
end
