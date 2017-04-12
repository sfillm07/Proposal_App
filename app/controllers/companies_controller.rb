class CompaniesController < ApplicationController

	before_action :find_company, only: [:show, :edit, :update, :destroy]

	def index
		@companies = Company.all
	end

	def show
	end

	def new
		@company = Company.new
	end

	def create
		@company = Company.new(company_params)

		if @company.save
			redirect_to @company, notice: "Successfully created new company"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @company.update(company_params)
			redirect_to @company, notice: "Successfully updated company"
		else
			render 'edit'
		end
	end

	def destroy
		@company.destroy
		redirect_to root_path, notice: "Successfully destroyed company"
	end

	private

	def company_params
		params.require(:company).permit(:name, :address, :city, :state, :zip, :phone, :fax)
	end

	def find_company
		@company = Company.find(params[:id])
	end







end
