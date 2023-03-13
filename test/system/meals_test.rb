require "application_system_test_case"

class MealsTest < ApplicationSystemTestCase
  setup do
    @meal = meals(:one)
  end

  test "visiting the index" do
    visit meals_url
    assert_selector "h1", text: "Meals"
  end

  test "creating a Meal" do
    visit meals_url
    click_on "New Meal"

    fill_in "Day", with: @meal.day_id
    fill_in "Food1", with: @meal.food1_id
    fill_in "Food2", with: @meal.food2_id
    fill_in "Food3", with: @meal.food3_id
    fill_in "Food4", with: @meal.food4_id
    fill_in "Soup1", with: @meal.soup1_id
    fill_in "Soup2", with: @meal.soup2_id
    fill_in "Week", with: @meal.week_id
    click_on "Create Meal"

    assert_text "Meal was successfully created"
    click_on "Back"
  end

  test "updating a Meal" do
    visit meals_url
    click_on "Edit", match: :first

    fill_in "Day", with: @meal.day_id
    fill_in "Food1", with: @meal.food1_id
    fill_in "Food2", with: @meal.food2_id
    fill_in "Food3", with: @meal.food3_id
    fill_in "Food4", with: @meal.food4_id
    fill_in "Soup1", with: @meal.soup1_id
    fill_in "Soup2", with: @meal.soup2_id
    fill_in "Week", with: @meal.week_id
    click_on "Update Meal"

    assert_text "Meal was successfully updated"
    click_on "Back"
  end

  test "destroying a Meal" do
    visit meals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meal was successfully destroyed"
  end
end
