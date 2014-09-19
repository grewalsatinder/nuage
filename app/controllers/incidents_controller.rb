class IncidentsController < ApplicationController

  def index 
 
    @incidents = Incident.all # using model
    
  end

  def show
    
    #puts 
   
    @incident = Incident.find(params[:id])
  
    # select * from incident where id(column)= 1(row),params is array used to grab the value from url query string 
 
  end

  def new
    @incident = Incident.new
  end

  def create
    
     @incident = Incident.new(params.require(:incident).permit(:location, :email))
      
      if @incident.save
        redirect_to incidents_path
      else
        render 'new'
      end
  end

  def edit
    @incident = Incident.find(params[:id])
  end

  def update
     @incident = Incident.find(params[:id])

     if @incident.update_attributes(params.require(:incident).permit(:email, :location))
      redirect_to incidents_path
    else
      render 'edit'
    end
  end

  def destroy
    @incident = Incident.find(params[:id])
    @incident.destroy
    redirect_to incidents_path

  end
end
