require 'test_helper'

class StatusWorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_work = status_works(:one)
  end

  test "should get index" do
    get status_works_url
    assert_response :success
  end

  test "should get new" do
    get new_status_work_url
    assert_response :success
  end

  test "should create status_work" do
    assert_difference('StatusWork.count') do
      post status_works_url, params: { status_work: { etape: @status_work.etape } }
    end

    assert_redirected_to status_work_url(StatusWork.last)
  end

  test "should show status_work" do
    get status_work_url(@status_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_status_work_url(@status_work)
    assert_response :success
  end

  test "should update status_work" do
    patch status_work_url(@status_work), params: { status_work: { etape: @status_work.etape } }
    assert_redirected_to status_work_url(@status_work)
  end

  test "should destroy status_work" do
    assert_difference('StatusWork.count', -1) do
      delete status_work_url(@status_work)
    end

    assert_redirected_to status_works_url
  end
end
