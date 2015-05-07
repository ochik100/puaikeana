class TreasurersController < ApplicationController
  layout 'admin'

  def index
    @treasurers = Nominee.where(treasurer_candidate: true)
  end
end
