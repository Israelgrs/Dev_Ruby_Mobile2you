# frozen_string_literal: true

require 'test_helper'

class EventsParticipationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @events_participation = events_participations(:one)
  end

  test 'should get index' do
    get events_participations_url
    assert_response :success
  end

  test 'should get new' do
    get new_events_participation_url
    assert_response :success
  end

  test 'should create events_participation' do
    assert_difference('EventsParticipation.count') do
      post events_participations_url,
           params: { events_participation: { event_id: @events_participation.event_id, user_id: @events_participation.user_id,
                                             was_present: @events_participation.was_present } }
    end

    assert_redirected_to events_participation_url(EventsParticipation.last)
  end

  test 'should show events_participation' do
    get events_participation_url(@events_participation)
    assert_response :success
  end

  test 'should get edit' do
    get edit_events_participation_url(@events_participation)
    assert_response :success
  end

  test 'should update events_participation' do
    patch events_participation_url(@events_participation),
          params: { events_participation: { event_id: @events_participation.event_id, user_id: @events_participation.user_id,
                                            was_present: @events_participation.was_present } }
    assert_redirected_to events_participation_url(@events_participation)
  end

  test 'should destroy events_participation' do
    assert_difference('EventsParticipation.count', -1) do
      delete events_participation_url(@events_participation)
    end

    assert_redirected_to events_participations_url
  end
end
