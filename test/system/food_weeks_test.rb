require "application_system_test_case"

class FoodWeeksTest < ApplicationSystemTestCase
  setup do
    @food_week = food_weeks(:one)
  end

  test "visiting the index" do
    visit food_weeks_url
    assert_selector "h1", text: "Food Weeks"
  end

  test "creating a Food week" do
    visit food_weeks_url
    click_on "New Food Week"

    fill_in "Day", with: @food_week.day_id
    fill_in "Food1", with: @food_week.food1_id
    fill_in "Food2", with: @food_week.food2_id
    fill_in "Food3", with: @food_week.food3_id
    fill_in "Food4", with: @food_week.food4_id
    fill_in "Soup1", with: @food_week.soup1_id
    fill_in "Soup2", with: @food_week.soup2_id
    fill_in "Week", with: @food_week.week_id
    click_on "Create Food week"

    assert_text "Food week was successfully created"
    click_on "Back"
  end

  test "updating a Food week" do
    visit food_weeks_url
    click_on "Edit", match: :first

    fill_in "Day", with: @food_week.day_id
    fill_in "Food1", with: @food_week.food1_id
    fill_in "Food2", with: @food_week.food2_id
    fill_in "Food3", with: @food_week.food3_id
    fill_in "Food4", with: @food_week.food4_id
    fill_in "Soup1", with: @food_week.soup1_id
    fill_in "Soup2", with: @food_week.soup2_id
    fill_in "Week", with: @food_week.week_id
    click_on "Update Food week"

    assert_text "Food week was successfully updated"
    click_on "Back"
  end

  test "destroying a Food week" do
    visit food_weeks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Food week was successfully destroyed"
  end
end
