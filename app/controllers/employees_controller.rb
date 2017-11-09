class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(employee_params)
    @company = Company.find(params[:company_id])
    @employee.company = @company
    @employee.save
    redirect_to @company
  end

  def destroy
      @employee = Employee.find(params[:id])
      @company = @employee.company
      @employee.destroy
      redirect_to @company
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
  end

end
