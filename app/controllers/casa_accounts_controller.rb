class CasaAccountsController < ApplicationController
  before_action :set_casa_account, only: [:show, :update, :destroy]

  # GET /casa_accounts
  # GET /casa_accounts.json
  def index
    @casa_accounts = CasaAccount.all
  end

  # GET /casa_accounts/1
  # GET /casa_accounts/1.json
  def show
  end

  # POST /casa_accounts
  # POST /casa_accounts.json
  def create
    @casa_account = CasaAccount.new(casa_account_params)

    if @casa_account.save
      render :show, status: :created, location: @casa_account
    else
      render json: @casa_account.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /casa_accounts/1
  # PATCH/PUT /casa_accounts/1.json
  def update
    if @casa_account.update(casa_account_params)
      render :show, status: :ok, location: @casa_account
    else
      render json: @casa_account.errors, status: :unprocessable_entity
    end
  end

  # DELETE /casa_accounts/1
  # DELETE /casa_accounts/1.json
  def destroy
    @casa_account.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_casa_account
    @casa_account = CasaAccount.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def casa_account_params
    params.require(:casa_account).permit(:account_no, :bal, :avail_bal, :product_code, :product_desc, :currency)
  end
end
