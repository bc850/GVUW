module Dashboards
  class LandingsController < DashboardController

    def landing
    end

    def index
      ## Testing CanCanCan
      @event = Event.first
    end

  end
end
