class JetsController < ApplicationController
  def index
    @jets = Jet.all
  end

  def show
    @jet = Jet.find(params[:id])
    @user = @jet.user
    end
end