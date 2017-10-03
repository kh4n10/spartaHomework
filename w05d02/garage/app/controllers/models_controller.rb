class ModelsController < ApplicationController
# below links to the private method and allows the show, edit to be empty
before_action :set_model, only: [:show, :edit, :update, :destroy]


	def index
  	@models = Model.all
  end
	
	def show
	end

	def new
		@model = Model.new
	end

	def edit
	end

	def create
  	@model = Model.new(model_params)

		@model.save
    redirect_to models_url, notice: 'Car model was successfully created.'
  end


  def update
  	@model.update(model_params)
  	
  	@model.save
  	redirect_to models_url, notice: 'Car model was successfully updated.'
  end


  def destroy
  	@model.destroy
  	redirect_to models_url
  end




  private
    
    def set_model
      @model = Model.find(params[:id])
    end

# have to include the company_id for the create to work, known as a foreign key
    def model_params
    	params.require(:model).permit(:name, :engine_size, :sold, :company_id)
    end


end