class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find_by(id: params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new account_params
    if @account.save
      redirect_to accounts_path
    else
      render :new
    end
  end
  def edit
    @account = Account.find_by id: params[:id]
  end

  def update

  end
  private

  def account_params
    params.require(:account).permit(:full_name, :login, :password, :role, :department)
  end
end
