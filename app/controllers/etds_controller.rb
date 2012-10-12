class EtdsController < ApplicationController

  def new
    @etd = Etd.new
  end

  def create
    @etd = Etd.create(params[:etd])
    flash[:notice] = 'ETD created'
    redirect_to root_path
  end

  def index
    @etds = Etd.find(:all)
  end

  def show
    @etd = Etd.find(params[:id])
  end
end
