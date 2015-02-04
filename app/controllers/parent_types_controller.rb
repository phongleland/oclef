class ParentTypesController < ApplicationController
  before_action :set_parent_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @parent_types = ParentType.all
    respond_with(@parent_types)
  end

  def show
    respond_with(@parent_type)
  end

  def new
    @parent_type = ParentType.new
    respond_with(@parent_type)
  end

  def edit
  end

  def create
    @parent_type = ParentType.new(parent_type_params)
    flash[:notice] = 'ParentType was successfully created.' if @parent_type.save
    respond_with(@parent_type)
  end

  def update
    flash[:notice] = 'ParentType was successfully updated.' if @parent_type.update(parent_type_params)
    respond_with(@parent_type)
  end

  def destroy
    @parent_type.destroy
    respond_with(@parent_type)
  end

  private
    def set_parent_type
      @parent_type = ParentType.find(params[:id])
    end

    def parent_type_params
      params.require(:parent_type).permit(:name)
    end
end
