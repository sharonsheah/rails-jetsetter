class JetsController < ApplicationController
  def index
    @jets = Jet.all
  end

  def show
    @jet = Jet.find(params[:id])
    @user = @jet.user
  end

  def new
    @user = User.find(param[:user_id])
    @jet = Jet.new
  end

  def create
    @jet = Jet.new(jet_params)
    @user = User.find(param[:user_id])
    @jet.user = @user
    if @jet.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end
  
  private 

  def jet_params
    params.require(:jet).permit(:content)
  end
end
