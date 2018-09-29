module Home
  class RegistrationsController < HomeController
    before_action :set_event

    def create
      @registration = @event.registrations.create(registration_params)
      @registration.save

      EventRegistrationMailer.new_event_registration(@registration).deliver_now

      respond_to do |format|
        if @registration.save
          format.html { redirect_to event_path(@event), notice: 'You have successfully registered!'}
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
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
