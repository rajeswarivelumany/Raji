require 'test_helper'

class MdemosControllerTest < ActionController::TestCase
  setup do
    @mdemo = mdemos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mdemos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mdemo" do
    assert_difference('Mdemo.count') do
      post :create, mdemo: { age: @mdemo.age, content: @mdemo.content, title: @mdemo.title }
    end

    assert_redirected_to mdemo_path(assigns(:mdemo))
  end

  test "should show mdemo" do
    get :show, id: @mdemo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mdemo
    assert_response :success
  end

  test "should update mdemo" do
    put :update, id: @mdemo, mdemo: { age: @mdemo.age, content: @mdemo.content, title: @mdemo.title }
    assert_redirected_to mdemo_path(assigns(:mdemo))
  end

  test "should destroy mdemo" do
    assert_difference('Mdemo.count', -1) do
      delete :destroy, id: @mdemo
    end

    assert_redirected_to mdemos_path
  end
end
