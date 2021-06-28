# frozen_string_literal: true

require 'application_system_test_case'

class EventsParticipationsTest < ApplicationSystemTestCase
  setup do
    @events_participation = events_participations(:one)
  end

  test 'visiting the index' do
    visit events_participations_url
    assert_selector 'h1', text: 'Events Participations'
  end

  test 'creating a Events participation' do
    visit events_participations_url
    click_on 'New Events Participation'

    fill_in 'Event', with: @events_participation.event_id
    fill_in 'User', with: @events_participation.user_id
    check 'Was present' if @events_participation.was_present
    click_on 'Create Events participation'

    assert_text 'Events participation was successfully created'
    click_on 'Back'
  end

  test 'updating a Events participation' do
    visit events_participations_url
    click_on 'Edit', match: :first

    fill_in 'Event', with: @events_participation.event_id
    fill_in 'User', with: @events_participation.user_id
    check 'Was present' if @events_participation.was_present
    click_on 'Update Events participation'

    assert_text 'Events participation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Events participation' do
    visit events_participations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Events participation was successfully destroyed'
  end
end
