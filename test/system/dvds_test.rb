require "application_system_test_case"

class DvdsTest < ApplicationSystemTestCase
  setup do
    @dvd = dvds(:one)
  end

  test "visiting the index" do
    visit dvds_url
    assert_selector "h1", text: "Dvds"
  end

  test "creating a Dvd" do
    visit dvds_url
    click_on "New Dvd"

    fill_in "Description", with: @dvd.description
    fill_in "Image", with: @dvd.image
    fill_in "Link", with: @dvd.link
    fill_in "Number", with: @dvd.number
    fill_in "Title", with: @dvd.title
    fill_in "Year", with: @dvd.year
    click_on "Create Dvd"

    assert_text "Dvd was successfully created"
    click_on "Back"
  end

  test "updating a Dvd" do
    visit dvds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dvd.description
    fill_in "Image", with: @dvd.image
    fill_in "Link", with: @dvd.link
    fill_in "Number", with: @dvd.number
    fill_in "Title", with: @dvd.title
    fill_in "Year", with: @dvd.year
    click_on "Update Dvd"

    assert_text "Dvd was successfully updated"
    click_on "Back"
  end

  test "destroying a Dvd" do
    visit dvds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dvd was successfully destroyed"
  end
end
