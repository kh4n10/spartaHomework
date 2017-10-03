class CompaniesController < ApplicationController
# below links to the private method and allows the show, edit to be empty
before_action :set_company, only: [:show, :edit, :update, :destroy]


	def index
  	@companies = Company.all
  end
	
	def show
	end

	def new
		@company = Company.new
	end

	def edit
	end

	def create
  	@company = Company.new(company_params)

		@company.save
    redirect_to companies_url, notice: 'Company was successfully created.'
  end


  def update
  	@company.update(company_params)
  	
  	@company.save
  	redirect_to companies_url, notice: 'Company was successfully updated.'
  end


  def destroy
  	@company.destroy
  	redirect_to companies_url
  end




  private
    
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
    	params.require(:company).permit(:name, :established, :description)
    end


end