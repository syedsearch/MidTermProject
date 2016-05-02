require 'test_helper'

class OlympicMedalsControllerTest < ActionController::TestCase
  setup do
    @olympic_medal = olympic_medals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:olympic_medals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create olympic_medal" do
    assert_difference('OlympicMedal.count') do
      post :create, olympic_medal: { athlete_name: @olympic_medal.athlete_name, country: @olympic_medal.country, event: @olympic_medal.event, event_date: @olympic_medal.event_date, medal_type: @olympic_medal.medal_type }
    end

    assert_redirected_to olympic_medal_path(assigns(:olympic_medal))
  end

  test "should show olympic_medal" do
    get :show, id: @olympic_medal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @olympic_medal
    assert_response :success
  end

  test "should update olympic_medal" do
    patch :update, id: @olympic_medal, olympic_medal: { athlete_name: @olympic_medal.athlete_name, country: @olympic_medal.country, event: @olympic_medal.event, event_date: @olympic_medal.event_date, medal_type: @olympic_medal.medal_type }
    assert_redirected_to olympic_medal_path(assigns(:olympic_medal))
  end

  test "should destroy olympic_medal" do
    assert_difference('OlympicMedal.count', -1) do
      delete :destroy, id: @olympic_medal
    end

    assert_redirected_to olympic_medals_path
  end
end
