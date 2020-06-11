class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end
  def show 
    @company = Company.find(params[:id])
    @offices = Office.all
    @buildings =Building.all
  end
  def new
    @company = Company.new
  end
  def create
    company = Company.create(company_params)
    if company.valid?
      redirect_to company_path(company)
      else
        flash[:errors] = company.errors.full_messages
        redirect_to new_company_path
      end
  end
  private
  def company_params
    params.require(:company).permit(:name)
  end
end