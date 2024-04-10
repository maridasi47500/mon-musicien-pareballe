require "application_system_test_case"

class MusicalinstrumentsTest < ApplicationSystemTestCase
  setup do
    @musicalinstrument = musicalinstruments(:one)
  end

  test "visiting the index" do
    visit musicalinstruments_url
    assert_selector "h1", text: "Musicalinstruments"
  end

  test "should create musicalinstrument" do
    visit musicalinstruments_url
    click_on "New musicalinstrument"

    fill_in "Image", with: @musicalinstrument.image
    fill_in "Name", with: @musicalinstrument.name
    click_on "Create Musicalinstrument"

    assert_text "Musicalinstrument was successfully created"
    click_on "Back"
  end

  test "should update Musicalinstrument" do
    visit musicalinstrument_url(@musicalinstrument)
    click_on "Edit this musicalinstrument", match: :first

    fill_in "Image", with: @musicalinstrument.image
    fill_in "Name", with: @musicalinstrument.name
    click_on "Update Musicalinstrument"

    assert_text "Musicalinstrument was successfully updated"
    click_on "Back"
  end

  test "should destroy Musicalinstrument" do
    visit musicalinstrument_url(@musicalinstrument)
    click_on "Destroy this musicalinstrument", match: :first

    assert_text "Musicalinstrument was successfully destroyed"
  end
end
