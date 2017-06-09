class LineitemsController < ApplicationController
  before_action :find_lineitem, only: [:show, :edit, :update, :destroy]

  def index
    @lineitems = Lineitem.all
  end

  def show
  end

  def new
    @lineitem = Lineitem.new
  end

  def create
    @lineitem = Lineitem.new(lineitem_params)

    if @lineitems.save
      redirect_to @lineitems, success: "Successfully created new line item"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @lineitems.update(lineitem_params)
      redirect_to @lineitems, success: "Successfully updated line item"
    else
      render 'edit'
    end
  end

  def destroy
    @lineitems.destroy
    redirect_to root_path, alert: "Successfully destroyed line item"
  end

  private

  def lineitem_params
    params.require(:lineitem).permit(:name, :address, :city, :state, :zip, :phone, :fax)
  end

  def find_lineitem
    @company = Lineitem.find(params[:id])
  end
end
