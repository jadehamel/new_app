require "application_system_test_case"

class MenusTest < ApplicationSystemTestCase
  setup do
    @menu = menus(:one)
  end

  test "visiting the index" do
    visit menus_url
    assert_selector "h1", text: "Menus"
  end

  test "creating a Menu" do
    visit menus_url
    click_on "New Menu"

    fill_in "Day", with: @menu.day_id
    fill_in "Food1", with: @menu.food1_id
    fill_in "Food2", with: @menu.food2_id
    fill_in "Food3", with: @menu.food3_id
    fill_in "Food4", with: @menu.food4_id
    fill_in "Soup1", with: @menu.soup1_id
    fill_in "Soup2", with: @menu.soup2_id
    fill_in "Week", with: @menu.week_id
    click_on "Create Menu"

    assert_text "Menu was successfully created"
    click_on "Back"
  end

  test "updating a Menu" do
    visit menus_url
    click_on "Edit", match: :first

    fill_in "Day", with: @menu.day_id
    fill_in "Food1", with: @menu.food1_id
    fill_in "Food2", with: @menu.food2_id
    fill_in "Food3", with: @menu.food3_id
    fill_in "Food4", with: @menu.food4_id
    fill_in "Soup1", with: @menu.soup1_id
    fill_in "Soup2", with: @menu.soup2_id
    fill_in "Week", with: @menu.week_id
    click_on "Update Menu"

    assert_text "Menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Menu" do
    visit menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menu was successfully destroyed"
  end
end
