class BranchesController < ApplicationController

	before_action :find_branch, only: [:show, :edit, :update, :destroy]

	def index
		@branches = Branch.all
	end

	def show
	end

	def new
		@branch = Branch.new
	end

	def create
		@branch = Branch.new(branch_params)

		if @branch.save
			redirect_to @branch, notice: "Successfully created new branch"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @branch.update(branch_params)
			redirect_to @branch, notice: "Successfully updated branch"
		else
			render 'edit'
		end
	end

	def destroy
		@branch.destroy
		redirect_to branches_path, notice: "Successfully destroyed branch"
	end

	private

	def branch_params
		params.require(:branch).permit(:branch_name, :branch_address, :branch_city, :branch_state, :branch_zip, :branch_phone, :branch_fax)
	end

	def find_branch
		@branch = Branch.find(params[:id])
	end

end
