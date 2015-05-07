class CulturalConsultantsController < ApplicationController
  layout 'admin'

  def index
    @cultural_consultants = Nominee.where(cultural_candidate: true)
  end
end
