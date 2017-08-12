require 'test_helper'

class SchedulerHitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scheduler_hit = scheduler_hits(:one)
  end

  test "should get index" do
    get scheduler_hits_url
    assert_response :success
  end

  test "should get new" do
    get new_scheduler_hit_url
    assert_response :success
  end

  test "should create scheduler_hit" do
    assert_difference('SchedulerHit.count') do
      post scheduler_hits_url, params: { scheduler_hit: { interval: @scheduler_hit.interval, task: @scheduler_hit.task } }
    end

    assert_redirected_to scheduler_hit_url(SchedulerHit.last)
  end

  test "should show scheduler_hit" do
    get scheduler_hit_url(@scheduler_hit)
    assert_response :success
  end

  test "should get edit" do
    get edit_scheduler_hit_url(@scheduler_hit)
    assert_response :success
  end

  test "should update scheduler_hit" do
    patch scheduler_hit_url(@scheduler_hit), params: { scheduler_hit: { interval: @scheduler_hit.interval, task: @scheduler_hit.task } }
    assert_redirected_to scheduler_hit_url(@scheduler_hit)
  end

  test "should destroy scheduler_hit" do
    assert_difference('SchedulerHit.count', -1) do
      delete scheduler_hit_url(@scheduler_hit)
    end

    assert_redirected_to scheduler_hits_url
  end
end
