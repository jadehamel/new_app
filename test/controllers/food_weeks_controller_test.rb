require "test_helper"

class FoodWeeksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_week = food_weeks(:one)
  end

  test "should get index" do
    get food_weeks_url
    assert_response :success
  end

  test "should get new" do
    get new_food_week_url
    assert_response :success
  end

  test "should create food_week" do
    assert_difference('FoodWeek.count') do
      post food_weeks_url, params: { food_week: { day_id: @food_week.day_id, food1_id: @food_week.food1_id, food2_id: @food_week.food2_id, food3_id: @food_week.food3_id, food4_id: @food_week.food4_id, soup1_id: @food_week.soup1_id, soup2_id: @food_week.soup2_id, week_id: @food_week.week_id } }
    end

    assert_redirected_to food_week_url(FoodWeek.last)
  end

  test "should show food_week" do
    get food_week_url(@food_week)
    assert_response :success
  end

  test "should get edit" do
    get edit_food_week_url(@food_week)
    assert_response :success
  end

  test "should update food_week" do
    patch food_week_url(@food_week), params: { food_week: { day_id: @food_week.day_id, food1_id: @food_week.food1_id, food2_id: @food_week.food2_id, food3_id: @food_week.food3_id, food4_id: @food_week.food4_id, soup1_id: @food_week.soup1_id, soup2_id: @food_week.soup2_id, week_id: @food_week.week_id } }
    assert_redirected_to food_week_url(@food_week)
  end

  test "should destroy food_week" do
    assert_difference('FoodWeek.count', -1) do
      delete food_week_url(@food_week)
    end

    assert_redirected_to food_weeks_url
  end
end
