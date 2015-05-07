class SecretariesController < ApplicationController
  layout 'admin'

  def index
    @secretaries = Nominee.where(secretary_candidate: true)
  end
end
