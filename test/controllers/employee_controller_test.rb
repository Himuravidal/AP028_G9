require 'test_helper'

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name:string" do
    get employee_first_name:string_url
    assert_response :success
  end

  test "should get last_name:string" do
    get employee_last_name:string_url
    assert_response :success
  end

  test "should get email:string" do
    get employee_email:string_url
    assert_response :success
  end

  test "should get company:references" do
    get employee_company:references_url
    assert_response :success
  end

  test "should get arew" do
    get employee_arew_url
    assert_response :success
  end

end
