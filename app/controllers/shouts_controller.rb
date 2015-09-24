class ShoutsController < ApplicationController
  def index

    limit = (params[:limit] || 25).to_i
    page  = (params[:page]  ||  0).to_i

    if params[:user_id]
      shouts = User.find(params[:user_id]).shouts
    else
      shouts = Shout.limit(limit).offset(page * limit).order(params[:timestamps])
    end

    render locals: { shouts: shouts, page: page , limit: limit }
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
