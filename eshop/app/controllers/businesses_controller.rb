class BusinessesController < ApplicationController
  before_action :authorise

  def show
    @business = Business.find params[:id]
  end

  def edit
    @business = Business.find params[:id]
  end

  def update
    business = Business.find params[:id]
    business.update business_params
    redirect_to business_path
  end


private
def business_params
  params.require(:business).permit(:company_name, :trading_name, :abn, :logo, :email, :phone, :tax_rate)
end

def authorise
  redirect_to root_path unless (@current_user.present? && @current_user.master?)
end

end
