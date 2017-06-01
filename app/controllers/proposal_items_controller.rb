class ProposalItemsController < ApplicationController

  before_action :find_proposal_item, only: [:show, :edit, :update, :destroy]

  def new
    @proposal_item = ProposalItem.new
  end

  def create
    @proposal_item = ProposalItem.new(item_params)

    if @proposal_item.save
      redirect_to @proposal_item, notice: "Successfully created new proposal item"
    else
      render 'new'
    end
  end

  def show
  end

  private

  def item_params
    params.require(:proposal_item).permit(:name, :price)
  end

  def find_proposal_item
    @proposal_item = ProposalItem.find(params[:id])
  end

end
