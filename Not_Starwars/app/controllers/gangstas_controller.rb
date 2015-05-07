class GangstasController < ApplicationController
  def index
    #tg
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
