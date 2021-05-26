require "test_helper"

class IscrizionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iscrizione = iscriziones(:one)
  end

  test "should get index" do
    get iscriziones_url
    assert_response :success
  end

  test "should get new" do
    get new_iscrizione_url
    assert_response :success
  end

  test "should create iscrizione" do
    assert_difference('Iscrizione.count') do
      post iscriziones_url, params: { iscrizione: { cellulare: @iscrizione.cellulare, cognome: @iscrizione.cognome, email: @iscrizione.email, età: @iscrizione.età, nome: @iscrizione.nome, richiesta: @iscrizione.richiesta } }
    end

    assert_redirected_to iscrizione_url(Iscrizione.last)
  end

  test "should show iscrizione" do
    get iscrizione_url(@iscrizione)
    assert_response :success
  end

  test "should get edit" do
    get edit_iscrizione_url(@iscrizione)
    assert_response :success
  end

  test "should update iscrizione" do
    patch iscrizione_url(@iscrizione), params: { iscrizione: { cellulare: @iscrizione.cellulare, cognome: @iscrizione.cognome, email: @iscrizione.email, età: @iscrizione.età, nome: @iscrizione.nome, richiesta: @iscrizione.richiesta } }
    assert_redirected_to iscrizione_url(@iscrizione)
  end

  test "should destroy iscrizione" do
    assert_difference('Iscrizione.count', -1) do
      delete iscrizione_url(@iscrizione)
    end

    assert_redirected_to iscriziones_url
  end
end
