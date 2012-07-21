require 'test_helper'

class NameListsControllerTest < ActionController::TestCase
  setup do
    @name_list = name_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:name_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name_list" do
    assert_difference('NameList.count') do
      post :create, name_list: { age: @name_list.age, discription: @name_list.discription, dob: @name_list.dob, gender: @name_list.gender, id: @name_list.id, name: @name_list.name }
    end

    assert_redirected_to name_list_path(assigns(:name_list))
  end

  test "should show name_list" do
    get :show, id: @name_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name_list
    assert_response :success
  end

  test "should update name_list" do
    put :update, id: @name_list, name_list: { age: @name_list.age, discription: @name_list.discription, dob: @name_list.dob, gender: @name_list.gender, id: @name_list.id, name: @name_list.name }
    assert_redirected_to name_list_path(assigns(:name_list))
  end

  test "should destroy name_list" do
    assert_difference('NameList.count', -1) do
      delete :destroy, id: @name_list
    end

    assert_redirected_to name_lists_path
  end
end
