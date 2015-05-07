class GangstasController < ApplicationController

  def index
    @gangstas = Gangstum.all
  end

  def new
    @gangstum = Gangstum.new
  end
  def create
    gangstum = Gangsta.create( gangsta_params )
    redirect_to "/gangstum/#{ gangsta.id  }"
  end

  def show
    @gangstum = Gangstum.find(params[:id])
  end

  def edit
    @gangstum = Gangstum.find(params[:id])
  end
  def update
    gangstum = Gangstum.find(params[:id])
    gangstum.update(gangsta_params)
  end

  def destroy
    #rtone
    Gangstum.destroy(params[:id])
  end

private
  def gangsta_params
    params.require(:gangsta).permit(:username, :password)
  end
end
