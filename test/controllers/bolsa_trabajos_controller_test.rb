require 'test_helper'

class BolsaTrabajosControllerTest < ActionController::TestCase
  setup do
    @bolsa_trabajo = bolsa_trabajos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bolsa_trabajos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bolsa_trabajo" do
    assert_difference('BolsaTrabajo.count') do
      post :create, bolsa_trabajo: { descripcionAbreviada: @bolsa_trabajo.descripcionAbreviada, descripcionCompleta: @bolsa_trabajo.descripcionCompleta, empleador: @bolsa_trabajo.empleador, horario: @bolsa_trabajo.horario, latitud: @bolsa_trabajo.latitud, longitud: @bolsa_trabajo.longitud, requisitos: @bolsa_trabajo.requisitos, requisitosExcluyentes: @bolsa_trabajo.requisitosExcluyentes, sueldo: @bolsa_trabajo.sueldo, ubicacion: @bolsa_trabajo.ubicacion, urlImg: @bolsa_trabajo.urlImg }
    end

    assert_redirected_to bolsa_trabajo_path(assigns(:bolsa_trabajo))
  end

  test "should show bolsa_trabajo" do
    get :show, id: @bolsa_trabajo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bolsa_trabajo
    assert_response :success
  end

  test "should update bolsa_trabajo" do
    patch :update, id: @bolsa_trabajo, bolsa_trabajo: { descripcionAbreviada: @bolsa_trabajo.descripcionAbreviada, descripcionCompleta: @bolsa_trabajo.descripcionCompleta, empleador: @bolsa_trabajo.empleador, horario: @bolsa_trabajo.horario, latitud: @bolsa_trabajo.latitud, longitud: @bolsa_trabajo.longitud, requisitos: @bolsa_trabajo.requisitos, requisitosExcluyentes: @bolsa_trabajo.requisitosExcluyentes, sueldo: @bolsa_trabajo.sueldo, ubicacion: @bolsa_trabajo.ubicacion, urlImg: @bolsa_trabajo.urlImg }
    assert_redirected_to bolsa_trabajo_path(assigns(:bolsa_trabajo))
  end

  test "should destroy bolsa_trabajo" do
    assert_difference('BolsaTrabajo.count', -1) do
      delete :destroy, id: @bolsa_trabajo
    end

    assert_redirected_to bolsa_trabajos_path
  end
end
