class PresidentsController < ApplicationController

  #before_action :find_nominee
  layout 'admin'

  def index
    @presidents = Nominee.where(president_candidate: true)
  end

#private
 # def find_nominee
  #	if params[:nominee_id]
  #		@nominee = Nominee.find(params[:nominee_id])
  #	end
 # end


end
