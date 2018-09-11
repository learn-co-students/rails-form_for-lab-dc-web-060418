class SchoolClassesController < ApplicationController

  before_action :get_school_class, only: [:edit, :update, :show]

  def new
    @school_class = SchoolClass.new
  end

  def create
    school_class = SchoolClass.create(params.require(:school_class))
    redirect_to school_class_path(school_class)
  end

  def edit
  end

  def update
    @school_class.update(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  def show
  end

  private
    def get_school_class
      @school_class = SchoolClass.find(params[:id])
    end

end
