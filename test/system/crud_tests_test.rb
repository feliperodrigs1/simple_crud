require "application_system_test_case"

class CrudTestsTest < ApplicationSystemTestCase
  setup do
    @crud_test = crud_tests(:one)
  end

  test "visiting the index" do
    visit crud_tests_url
    assert_selector "h1", text: "Crud tests"
  end

  test "should create crud test" do
    visit crud_tests_url
    click_on "New crud test"

    fill_in "Email", with: @crud_test.email
    fill_in "Endereco", with: @crud_test.endereco
    fill_in "Id seq", with: @crud_test.id_seq
    fill_in "Nome", with: @crud_test.nome
    fill_in "Preco", with: @crud_test.preco
    click_on "Create Crud test"

    assert_text "Crud test was successfully created"
    click_on "Back"
  end

  test "should update Crud test" do
    visit crud_test_url(@crud_test)
    click_on "Edit this crud test", match: :first

    fill_in "Email", with: @crud_test.email
    fill_in "Endereco", with: @crud_test.endereco
    fill_in "Id seq", with: @crud_test.id_seq
    fill_in "Nome", with: @crud_test.nome
    fill_in "Preco", with: @crud_test.preco
    click_on "Update Crud test"

    assert_text "Crud test was successfully updated"
    click_on "Back"
  end

  test "should destroy Crud test" do
    visit crud_test_url(@crud_test)
    click_on "Destroy this crud test", match: :first

    assert_text "Crud test was successfully destroyed"
  end
end
