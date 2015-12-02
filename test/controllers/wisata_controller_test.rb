require 'test_helper'

class WisataControllerTest < ActionController::TestCase
  setup do
    @wisatum = wisata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wisata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wisatum" do
    assert_difference('Wisatum.count') do
      post :create, wisatum: { foto: @wisatum.foto, harga: @wisatum.harga, info: @wisatum.info, nama: @wisatum.nama }
    end

    assert_redirected_to wisatum_path(assigns(:wisatum))
  end

  test "should show wisatum" do
    get :show, id: @wisatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wisatum
    assert_response :success
  end

  test "should update wisatum" do
    patch :update, id: @wisatum, wisatum: { foto: @wisatum.foto, harga: @wisatum.harga, info: @wisatum.info, nama: @wisatum.nama }
    assert_redirected_to wisatum_path(assigns(:wisatum))
  end

  test "should destroy wisatum" do
    assert_difference('Wisatum.count', -1) do
      delete :destroy, id: @wisatum
    end

    assert_redirected_to wisata_path
  end
end
