class AppliancesController < ApplicationController
    before_action :set_appliance, only: [:show, :edit, :update, :destroy]

  def index
    @appliances = Appliance.all
  end

  def show
    
  end

  def new
    @appliance = Appliance.new
  end

  def create
    @appliance = Appliance.new(appliance_params)
    if @appliance.save
      flash[:notice] = "#{@appliance.brand} created succesfully"
      redirect_to @appliance
    else
      flash.now[:toast] = "There was some errors"
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @appliance.update(appliance_params)
      flash[:notice] = "#{@appliance.brand} have being succesfully updated"
      redirect_to @appliance
    else
      flash.now[:notice] = "There was some error"
      render 'edit'
    end
  end

  def destroy
    @appliance.destroy
    redirect_to appliances_path
  end

  private

  def set_appliance
    @appliance = Appliance.find(params[:id])
  end

  def appliance_params
    params.require(:appliance).permit(:brand, :equipment, :price, :logo)
  end


end