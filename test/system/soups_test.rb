require "application_system_test_case"

class SoupsTest < ApplicationSystemTestCase
  setup do
    @soup = soups(:one)
  end

  test "visiting the index" do
    visit soups_url
    assert_selector "h1", text: "Soups"
  end

  test "creating a Soup" do
    visit soups_url
    click_on "New Soup"

    fill_in "Description", with: @soup.description
    fill_in "Name", with: @soup.name
    click_on "Create Soup"

    assert_text "Soup was successfully created"
    click_on "Back"
  end

  test "updating a Soup" do
    visit soups_url
    click_on "Edit", match: :first

    fill_in "Description", with: @soup.description
    fill_in "Name", with: @soup.name
    click_on "Update Soup"

    assert_text "Soup was successfully updated"
    click_on "Back"
  end

  test "destroying a Soup" do
    visit soups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Soup was successfully destroyed"
  end
end
