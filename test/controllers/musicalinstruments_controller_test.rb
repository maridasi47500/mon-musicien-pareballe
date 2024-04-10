require "test_helper"

class MusicalinstrumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicalinstrument = musicalinstruments(:one)
  end

  test "should get index" do
    get musicalinstruments_url
    assert_response :success
  end

  test "should get new" do
    get new_musicalinstrument_url
    assert_response :success
  end

  test "should create musicalinstrument" do
    assert_difference("Musicalinstrument.count") do
      post musicalinstruments_url, params: { musicalinstrument: { image: @musicalinstrument.image, name: @musicalinstrument.name } }
    end

    assert_redirected_to musicalinstrument_url(Musicalinstrument.last)
  end

  test "should show musicalinstrument" do
    get musicalinstrument_url(@musicalinstrument)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicalinstrument_url(@musicalinstrument)
    assert_response :success
  end

  test "should update musicalinstrument" do
    patch musicalinstrument_url(@musicalinstrument), params: { musicalinstrument: { image: @musicalinstrument.image, name: @musicalinstrument.name } }
    assert_redirected_to musicalinstrument_url(@musicalinstrument)
  end

  test "should destroy musicalinstrument" do
    assert_difference("Musicalinstrument.count", -1) do
      delete musicalinstrument_url(@musicalinstrument)
    end

    assert_redirected_to musicalinstruments_url
  end
end
