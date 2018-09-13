module Home
  class RegistrationsController < HomeController
    before_action :set_event

    def new
      @event = Event.find params[:event_id]
      @registration = @event.registration.new
    end

    def create
      @registration = @event.registrations.create(registration_params)
      @registration.save

      if @registration.save
        redirect_to event_path(@event)
      else
        render 'new'
      end
    end

    private

    def registration_params
      params.require(:registration).permit(:name, :phone, :email)
    end

    def set_event
      @event = Event.friendly.find(params[:event_id])
    end
  end
end
