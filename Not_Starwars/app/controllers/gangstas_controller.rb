class GangstasController < ApplicationController

  def index
    @gangstas = Gangstum.all
  end

  def new
    @gangstum = Gangstum.new
  end
  def create
    #tg
  end

  def show
    @gangstum = Gangstum.find(params[:id])
  end

  def edit
    @gangstum = Gangstum.find(params[:id])
    @gangstum.update(params[:gangstum])
  end
  def update
    #mightygaby
  end

  def destroy
    #rtone
  end

end
