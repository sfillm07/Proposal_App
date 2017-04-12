class PropertiesController < ApplicationController

	before_action :find_property, only: [:show, :edit, :update, :destroy]

	def index
		@properties = Property.all
	end

	def show
	end

	def new
		@property = Property.new
	end

	def create
		@property = Property.new(property_params)

		if @property.save
			redirect_to @property, notice: "Successfully created new property"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @property.update(property_params)
			redirect_to @property, notice: "Successfully updated property"
		else
			render 'edit'
		end
	end

	def destroy
		@property.destroy
		redirect_to root_path, notice: "Successfully destroyed property"
	end

	private

	def property_params
		params.require(:property).permit(:name, :address, :city, :state, :zip, :manager_id)
	end

	def find_property
		@property = Property.find(params[:id])
	end
end

