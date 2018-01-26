class ServicesController < ApplicationController
    before_action :find_service, only: [:edit, :update, :show, :destroy]
    def index
        @services = Service.all
    end

    

    def new
        @service = Service.new 
    end

    def show
    end

    def create
        @service = Service.new(service_params)
        if @service.save
          redirect_to @service
        else
          render 'new'
        end
      end

    def edit
        
    end

    def update
        if @service.update(service_params)
            redirect_to @service
        else
            render 'edit'
        end
    end

    def destroy
        @service.destroy
        redirect_to root_path
    end

private
def service_params
  params.require(:service).permit(:title, :content, :description, :slug)
end

def find_service
  @service = Service.friendly.find(params[:id])
end
end