class TranzactionsController < ApplicationController

  skip_before_action :authenticate_user, only: [:create]


  def new
    @tranzaction = find_user.tranzactions.new
  end

  def create
    @tranzaction = find_user.tranzactions.new(user_tranzaction_params)

    if @tranzaction.save
      redirect_to @tranzaction.user
    else
      render :new
    end
  end

  private

  def find_user
    User.find(params[:user_id])
  end

  def user_tranzaction_params
    params.require(:tranzaction).permit(:amount)
  end
end
