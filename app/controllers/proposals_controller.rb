class ProposalsController < ApplicationController

  def new
    @proposal = Proposal.new
    @manager = Manager.new
  end

  def create
    @proposal = Proposal.new(proposal_params)

    if @proposal.save
      redirect_to @proposal, notice: "Successfully created new proposal"
    else
      render 'new'
    end
  end

  def show
  end

  private

  def proposal_params
    proposal_params.require(:proposal).permit(:date, proposal_items_attributes: [:id, :name, :price, :_destroy])
  end

end
