require 'test_helper'

class Api::V1::TodoitemsControllerTest < ActionController::TestCase
  setup do
    @api_v1_todoitem = api_v1_todoitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_todoitems)
  end

  test "should create api_v1_todoitem" do
    assert_difference('Api::V1::Todoitem.count') do
      post :create, api_v1_todoitem: {  }
    end

    assert_response 201
  end

  test "should show api_v1_todoitem" do
    get :show, id: @api_v1_todoitem
    assert_response :success
  end

  test "should update api_v1_todoitem" do
    put :update, id: @api_v1_todoitem, api_v1_todoitem: {  }
    assert_response 204
  end

  test "should destroy api_v1_todoitem" do
    assert_difference('Api::V1::Todoitem.count', -1) do
      delete :destroy, id: @api_v1_todoitem
    end

    assert_response 204
  end
end
