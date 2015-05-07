class LuauChairsController < ApplicationController
  layout 'admin'

  def index
    @luau_chairs = Nominee.where(luau_candidate: true)
  end
end
