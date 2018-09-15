module Home
  class EventsController < HomeController
    # GET /events
    # GET /events.json
    def index
      @events = event_prefix.list_for(params[:page], params[:tag])
    end

    # GET /events/1
    # GET /events/1.json
    def show
      @event = event_prefix.friendly.find(params[:id])
    end

    private

    def event_prefix
      Event.published
    end
  end
end
