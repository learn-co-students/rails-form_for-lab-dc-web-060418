class SchoolClassesController < ApplicationController
    before_action :set_school_class, only: [:show, :edit, :update]

    def index
        @school_classes = SchoolClass.all
    end

    def show
        
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        SchoolClass.create(params.require(:school_class))
        redirect_to school_class_path(SchoolClass.last.id)
    end

    def edit
        
    end

    def update
        @school_class.update(params.require(:school_class))
        redirect_to school_class_path(params[:id])
    end

    private

    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

    def post_params(*args)
  	    params.require(:school_class).permit(*args)
	end	
end