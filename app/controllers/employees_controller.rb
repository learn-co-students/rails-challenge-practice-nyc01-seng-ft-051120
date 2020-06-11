class EmployeesController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @employee = @company.employees.new
  end
  def create
    @company = Company.find(params[:company_id])
    @company.employees.create(employee_params)
    if @company.valid?
    redirect_to company_path(@company)
    else
      flash[:errors] = @company.errors.full_messages
      redirect_to new_company_employee_path
    end
  end
  def show
    @company = Company.find(params[:id])
    @employee = @company.employees.find(params[:company_id])
  end
  def destroy
    @company = Company.find(params[:id])
    @employee = @company.employees.find(params[:company_id])
    @employee.destroy
    redirect_to company_path
  end


  private
  def employee_params
    params.require(:employee).permit(:name,:title,:company_id)
  end
end
