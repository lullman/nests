class CratesController < ApplicationController

  def index
    @crates = Crate.all
  end

  def show
    @crate = Crate.find(params[:id])
  end

  def new
    @crate = Crate.new
    @crate.products.new
  end

  def edit
  end

  def create
    p "*" * 25
    p "Params..."
    p params
    p "*" * 25
    crate = Crate.new(crate_params)
    if crate.save
      redirect_to crate_path crate
    else
      redirect_to new_crate_path
    end
  end

  def update
  end

  def delete
  end

  private
    def crate_params
      params.require(:crate).permit(:crate_name, products_attributes: [:product_name] )
    end

end