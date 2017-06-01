class ManagersController < ApplicationController

  before_action :find_manager, only: [:show, :edit, :update, :destroy]

  def index
    @managers = Manager.all
  end

  def show
  end

  def new
    @manager = Manager.new
  end

  def create
    @manager = Manager.new(manager_params)

    if @manager.save
      redirect_to @manager, notice: "Successfully created new manager"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @manager.update(manager_params)
      redirect_to @manager, notice: "Successfully updated manager"
    else
      render 'edit'
    end
  end

  def destroy
    @manager.destroy
    redirect_to root_path, alert: "Successfully destroyed manager"
  end

  private

  def manager_params
    params.require(:manager).permit(:name, :cell_phone, :email, :company_id)
  end

  def find_manager
    @manager = Manager.find(params[:id])
  end
end
