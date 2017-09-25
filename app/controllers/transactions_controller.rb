class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:edit, :show, :update, :destroy]

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transactions = Transaction.all
    @transaction = Transaction.create(transaction_params)
    @transactions << @transaction
    if @transaction.save
      redirect_to @transaction
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @project.destroy
    redirect_to root_path
  end

  private
  def set_transaction
    @project = Project.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit( :amount, :card_name, :card_number, :year, :month)
  end

end
