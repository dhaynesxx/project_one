# == Schema Information
#
# Table name: businesses
#
#  id           :integer          not null, primary key
#  company_name :text
#  trading_name :text
#  abn          :text
#  logo         :text
#  email        :text
#  phone        :text
#  tax_rate     :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

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
