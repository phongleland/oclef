class ComposersController < ApplicationController
  before_action :set_composer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @composers = Composer.all
    respond_with(@composers)
  end

  def show
    respond_with(@composer)
  end

  def new
    @composer = Composer.new
    respond_with(@composer)
  end

  def edit
  end

  def create
    @composer = Composer.new(composer_params)
    flash[:notice] = 'Composer was successfully created.' if @composer.save
    respond_with(@composer)
  end

  def update
    flash[:notice] = 'Composer was successfully updated.' if @composer.update(composer_params)
    respond_with(@composer)
  end

  def destroy
    @composer.destroy
    respond_with(@composer)
  end

  private
    def set_composer
      @composer = Composer.find(params[:id])
    end

    def composer_params
      params.require(:composer).permit(:name, :dob, :bio)
    end
end
