class NomineesController < ApplicationController
   layout "admin"
  def index
    @nominees = Nominee.sorted
  end

  def show
    @nominee = Nominee.find(params[:id])
  end

  def new
    @nominee = Nominee.new({:first_name => "Default"})
  end

  def create
    # Instantiate a new object using form parameters
    @nominee = Nominee.new(nominee_params)
    # Save the object
    if @nominee.save
    # If save succeeds, redirect to the index action
          redirect_to(:action => 'index')
    else
    # If save fails, redisplay the form so user can fix problems
          render('new')
    end

    if @nominee.president_candidate 
      @president = President.new({:nominee_id => @nominee.id})
      @president.save
    end
    if @nominee.vp_candidate
      @vice_president = VicePresident.new({:nominee_id => @nominee.id})
      @vice_president.save
    end 
    if @nominee.secretary_candidate
      @secretary = Secretary.new({:nominee_id => @nominee.id})
      @secretary.save
    end 
    if @nominee.treasurer_candidate
      @treasurer = Treasurer.new({:nominee_id => @nominee.id})
      @treasurer.save
    end 
    if @nominee.marketing_candidate
      @marketing_chair = MarketingChair.new({:nominee_id => @nominee.id})
      @marketing_chair.save
    end 
    if @nominee.luau_candidate
      @luau_chair = LuauChair.new({:nominee_id => @nominee.id})
      @luau_chair.save
    end 



  end

  def edit
    @nominee = Nominee.find(params[:id])
    @nominee_count = Nominee.count
    if @nominee.president_candidate
      @president = President.find_by(:nominee_id => params[:id])
    end
    if @nominee.vp_candidate
      @vice_president = VicePresident.find_by(:nominee_id => params[:id])
    end
    if @nominee.secretary_candidate
      @secretary = Secretary.find_by(:nominee_id => params[:id])
    end
    if @nominee.treasurer_candidate
      @treasurer = Treasurer.find_by(:nominee_id => params[:id])
    end
    if @nominee.marketing_candidate
      @marketing_chair = MarketingChair.find_by(:nominee_id => params[:id])
    end
    if @nominee.luau_candidate
      @luau_chair = LuauChair.find_by(:nominee_id => params[:id])
    end
  end

  def update
    # Find an existing object using form parameters
    @nominee = Nominee.find(params[:id])
    # Update the object
    if @nominee.update_attributes(nominee_params)

    # If update succeeds, redirect to the index action
          redirect_to(:action => 'show', :id => @nominee.id)
    #end
    else
    # If update fails, redisplay the form so user can fix problems
          render('edit')
    end
  end

  def delete 
    @nominee = Nominee.find(params[:id])
    if @nominee.president_candidate
      @president = President.find_by(:nominee_id => params[:id])
    end
    if @nominee.vp_candidate
      @vice_president = VicePresident.find_by(:nominee_id => params[:id])
    end
    if @nominee.secretary_candidate
      @secretary = Secretary.find_by(:nominee_id => params[:id])
    end
    if @nominee.treasurer_candidate
      @treasurer = Treasurer.find_by(:nominee_id => params[:id])
    end
    if @nominee.marketing_candidate
      @marketing_chair = MarketingChair.find_by(:nominee_id => params[:id])
    end
    if @nominee.luau_candidate
      @luau_chair = LuauChair.find_by(:nominee_id => params[:id])
    end
  end

  def destroy
      @nominee = Nominee.find(params[:id])
      if @nominee.president_candidate
        @president = President.find_by(:nominee_id => params[:id]).destroy
      end
      if @nominee.vp_candidate
        @vice_president = VicePresident.find_by(:nominee_id => params[:id]).destroy
      end
      if @nominee.secretary_candidate
        @secretary = Secretary.find_by(:nominee_id => params[:id]).destroy
      end
      if @nominee.treasurer_candidate
        @treasurer = Treasurer.find_by(:nominee_id => params[:id]).destroy
      end
      if @nominee.marketing_candidate
        @marketing_chair = MarketingChair.find_by(:nominee_id => params[:id]).destroy
      end
      if @nominee.luau_candidate
        @luau_chair = LuauChair.find_by(:nominee_id => params[:id]).destroy
      end
      nominee = Nominee.find(params[:id]).destroy
      redirect_to(:action => 'index')
  end

  private
    def nominee_params
    # same as using "params[:subject]", except that it:
    # - raises an error if :subject is not present
    # - allows listed attributes to be mass-assigned
          params.require(:nominee).permit(:first_name, :last_name, :email, :chapman_id, :president_candidate, :vp_candidate, :secretary_candidate, :treasurer_candidate, :marketing_candidate, :luau_candidate, :fundraising_candidate, :community_candidate, :cultural_candidate)
    end
    
  

end