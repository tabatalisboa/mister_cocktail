class DosesController < ApplicationController
  before_action :find_cocktail

  def new
    @dose = Dose.new
  end

  def creat
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
