# frozen_string_literal: true

class EventsParticipationsController < ApplicationController
  before_action :set_events_participation, only: %i[show edit update destroy]

  # GET /events_participations or /events_participations.json
  def index
    @events_participations = EventsParticipation.all
  end

  # GET /events_participations/1 or /events_participations/1.json
  def show; end

  # GET /events_participations/new
  def new
    @events_participation = EventsParticipation.new
    users_for_select_events
    events_for_select_participation
  end

  # GET /events_participations/1/edit
  def edit
    users_for_select_events
    events_for_select_participation
  end

  # POST /events_participations or /events_participations.json
  def create
    @events_participation = EventsParticipation.new(events_participation_params)

    respond_to do |format|
      if @events_participation.save
        format.html { redirect_to @events_participation, notice: 'Events participation was successfully created.' }
        format.json { render :show, status: :created, location: @events_participation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @events_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events_participations/1 or /events_participations/1.json
  def update
    respond_to do |format|
      if @events_participation.update(events_participation_params)
        format.html { redirect_to @events_participation, notice: 'Events participation was successfully updated.' }
        format.json { render :show, status: :ok, location: @events_participation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @events_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events_participations/1 or /events_participations/1.json
  def destroy
    @events_participation.destroy
    respond_to do |format|
      format.html { redirect_to events_participations_url, notice: 'Events participation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_events_participation
    @events_participation = EventsParticipation.find(params[:id])
  end

  def users_for_select_events
    @usersForSelectEvents = User.all
  end

  def events_for_select_participation
    @eventsForSelectParticipation = Event.all
  end

  # Only allow a list of trusted parameters through.
  def events_participation_params
    params.require(:events_participation).permit(:user_id, :event_id, :was_present)
  end
end
