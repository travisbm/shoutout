class ShoutsController < ApplicationController
  def index
    shouts = Shout.all.order(params[:timestamps])
    render locals: { shouts: shouts }
  end

  def show
    shout = Shout.find(params[:id])
    render locals: { shout: shout }
  end

  def create
  end

  def update
  end

  def destroy
  end
end
