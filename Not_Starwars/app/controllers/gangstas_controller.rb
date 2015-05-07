class GangstasController < ApplicationController

  def index
    @gangstas = Gangstum.all
  end

  def new
    #rtone
  end

  def show
    @gangstum = Gangstum.find(params[:id])
  end

  def edit
    @gangstum = Gangstum.find(params[:id])
    @gangstum.update(params[:gangstum])
  end
  
end
