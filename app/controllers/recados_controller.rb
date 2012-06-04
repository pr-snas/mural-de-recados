class RecadosController < ApplicationController
  respond_to :json

  def index
    respond_with Recado.all
  end

  def show
    respond_with Recado.find(params[:id])
  end

  def create
    respond_with Recado.create(params[:recado])
  end

  def update
    respond_with Recado.update(params[:id], params[:recado])
  end

  def destroy
    respond_with Recado.destroy(params[:id])
  end
end
