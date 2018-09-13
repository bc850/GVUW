module Authors
  class RegistrationsController < AuthorController
    def new
      @event = Event.find params[:event_id]
      @registration = @event.registration.new
    end

    def create
      @event = Event.find params[:event_id]
      @registration = @event.registration.new registration_params
    end

    private

    def registration_params
      params.require(:registration).permit(:name, :phone, :email)
    end
  end
end
