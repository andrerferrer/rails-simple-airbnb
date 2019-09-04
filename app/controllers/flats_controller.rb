class FlatsController < ApplicationController
  before_action :find_flat, only: %i[show]
  before_action :set_flats, only: %i[index]
  before_action :new_flat, only: %i[new]

  def create
    new_flat(flat_params)
    if @flat.save
      go_to_flat
    else
      render :new
    end
  end

  private

  def set_flats
    @flats = Flat.all
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def new_flat(params = {})
    @flat = Flat.new(params)
  end

  def flat_params
    params.require(:flat).permit(Flat::ATTRIBUTES)
  end

  def go_to_flat
    redirect_to @flat
  end
end
