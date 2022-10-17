require "test_helper"

class CrudTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crud_test = crud_tests(:one)
  end

  test "should get index" do
    get crud_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_crud_test_url
    assert_response :success
  end

  test "should create crud_test" do
    assert_difference("CrudTest.count") do
      post crud_tests_url, params: { crud_test: { email: @crud_test.email, endereco: @crud_test.endereco, id_seq: @crud_test.id_seq, nome: @crud_test.nome, preco: @crud_test.preco } }
    end

    assert_redirected_to crud_test_url(CrudTest.last)
  end

  test "should show crud_test" do
    get crud_test_url(@crud_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_crud_test_url(@crud_test)
    assert_response :success
  end

  test "should update crud_test" do
    patch crud_test_url(@crud_test), params: { crud_test: { email: @crud_test.email, endereco: @crud_test.endereco, id_seq: @crud_test.id_seq, nome: @crud_test.nome, preco: @crud_test.preco } }
    assert_redirected_to crud_test_url(@crud_test)
  end

  test "should destroy crud_test" do
    assert_difference("CrudTest.count", -1) do
      delete crud_test_url(@crud_test)
    end

    assert_redirected_to crud_tests_url
  end
end
