require "test_helper"

class IscrivitisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iscriviti = iscrivitis(:one)
  end

  test "should get index" do
    get iscrivitis_url
    assert_response :success
  end

  test "should get new" do
    get new_iscriviti_url
    assert_response :success
  end

  test "should create iscriviti" do
    assert_difference('Iscriviti.count') do
      post iscrivitis_url, params: { iscriviti: { cellulare: @iscriviti.cellulare, cognome: @iscriviti.cognome, email: @iscriviti.email, età: @iscriviti.età, nome: @iscriviti.nome, richiesta: @iscriviti.richiesta } }
    end

    assert_redirected_to iscriviti_url(Iscriviti.last)
  end

  test "should show iscriviti" do
    get iscriviti_url(@iscriviti)
    assert_response :success
  end

  test "should get edit" do
    get edit_iscriviti_url(@iscriviti)
    assert_response :success
  end

  test "should update iscriviti" do
    patch iscriviti_url(@iscriviti), params: { iscriviti: { cellulare: @iscriviti.cellulare, cognome: @iscriviti.cognome, email: @iscriviti.email, età: @iscriviti.età, nome: @iscriviti.nome, richiesta: @iscriviti.richiesta } }
    assert_redirected_to iscriviti_url(@iscriviti)
  end

  test "should destroy iscriviti" do
    assert_difference('Iscriviti.count', -1) do
      delete iscriviti_url(@iscriviti)
    end

    assert_redirected_to iscrivitis_url
  end
end
