require 'test_helper'

class MaturisControllerTest < ActionController::TestCase
  setup do
    @maturi = maturis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maturis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maturi" do
    assert_difference('Maturi.count') do
      post :create, maturi: { city: @maturi.city, foto: @maturi.foto, naiyou: @maturi.naiyou, nitiji: @maturi.nitiji, taitoru: @maturi.taitoru, toukou: @maturi.toukou }
    end

    assert_redirected_to maturi_path(assigns(:maturi))
  end

  test "should show maturi" do
    get :show, id: @maturi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maturi
    assert_response :success
  end

  test "should update maturi" do
    patch :update, id: @maturi, maturi: { city: @maturi.city, foto: @maturi.foto, naiyou: @maturi.naiyou, nitiji: @maturi.nitiji, taitoru: @maturi.taitoru, toukou: @maturi.toukou }
    assert_redirected_to maturi_path(assigns(:maturi))
  end

  test "should destroy maturi" do
    assert_difference('Maturi.count', -1) do
      delete :destroy, id: @maturi
    end

    assert_redirected_to maturis_path
  end
end
