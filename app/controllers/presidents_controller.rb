class PresidentsController < ApplicationController
  def index
    @presidents = President.sorted
  end
end
