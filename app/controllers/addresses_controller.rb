class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @addresses = Address.all
    respond_with(@addresses)
  end

  def show
    respond_with(@address)
  end

  def new
    @address = Address.new
    respond_with(@address)
  end

  def edit
  end

  def create
    @address = Address.new(address_params)
    flash[:notice] = 'Address was successfully created.' if @address.save
    respond_with(@address)
  end

  def update
    flash[:notice] = 'Address was successfully updated.' if @address.update(address_params)
    respond_with(@address)
  end

  def destroy
    @address.destroy
    respond_with(@address)
  end

  private
    def set_address
      @address = Address.find(params[:id])
    end

    def address_params
      params.require(:address).permit(:street_1, :street_2, :city, :province, :postal_code, :country)
    end
end
