class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @parents = Parent.all
    respond_with(@parents)
  end

  def show
    respond_with(@parent)
  end

  def new
    @parent = Parent.new
    @parent.parentages.build({:student_id=>params[:student_id]})
    respond_with(@parent)
  end

  def edit
  end

  def create
    @parent = Parent.new(parent_params)
    flash[:notice] = 'Parent was successfully created.' if @parent.save
    respond_with(@parent)
  end

  def update
    flash[:notice] = 'Parent was successfully updated.' if @parent.update(parent_params)
    respond_with(@parent)
  end

  def destroy
    @parent.destroy
    respond_with(@parent)
  end

  private
    def set_parent
      @parent = Parent.find(params[:id])
    end

    def parent_params
      params.require(:parent).permit(:name, :telephone, :email, :parentages_attributes => [:parent_type_id, :student_id])
    end
end
