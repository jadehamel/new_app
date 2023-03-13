require "test_helper"

class MenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu = menus(:one)
  end

  test "should get index" do
    get menus_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_url
    assert_response :success
  end

  test "should create menu" do
    assert_difference('Menu.count') do
      post menus_url, params: { menu: { day_id: @menu.day_id, food1_id: @menu.food1_id, food2_id: @menu.food2_id, food3_id: @menu.food3_id, food4_id: @menu.food4_id, soup1_id: @menu.soup1_id, soup2_id: @menu.soup2_id, week_id: @menu.week_id } }
    end

    assert_redirected_to menu_url(Menu.last)
  end

  test "should show menu" do
    get menu_url(@menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_menu_url(@menu)
    assert_response :success
  end

  test "should update menu" do
    patch menu_url(@menu), params: { menu: { day_id: @menu.day_id, food1_id: @menu.food1_id, food2_id: @menu.food2_id, food3_id: @menu.food3_id, food4_id: @menu.food4_id, soup1_id: @menu.soup1_id, soup2_id: @menu.soup2_id, week_id: @menu.week_id } }
    assert_redirected_to menu_url(@menu)
  end

  test "should destroy menu" do
    assert_difference('Menu.count', -1) do
      delete menu_url(@menu)
    end

    assert_redirected_to menus_url
  end
end
