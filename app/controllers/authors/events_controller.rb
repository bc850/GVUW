module Authors
  class EventsController < AuthorController
    before_action :set_event, only: [:show, :edit, :update, :destroy, :publish, :unpublish]

    # GET /events
    # GET /events.json
    def index
      @events = current_author.events.most_recent.list_for(params[:page], params[:tag])
    end

    # GET /events/event
    def new
      @event = current_author.events.new
    end

    def show
      @registrations = @event.registrations
      @registrations = @registrations.paginate(:page => params[:page], :per_page => 3)
    end

    def publish
      @event.publish
      redirect_to authors_events_path
    end

    def unpublish
      @event.unpublish
      redirect_to authors_events_path
    end

    # POST /events
    # POST /events.json
    def create
      @event = current_author.events.new(event_params)

      respond_to do |format|
        if @event.save
          format.html { redirect_to authors_event_path(@event), notice: 'Event post was successfully created.' }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /events/1
    # PATCH/PUT /events/1.json
    def update
      respond_to do |format|
        if @event.update(event_params)
          format.html { redirect_to authors_event_path(@event), notice: 'News post was successfully updated.' }
          format.json { render :show, status: :ok, location: @event }
        else
          format.html { render :edit }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /news/1
    # DELETE /news/1.json
    def destroy
      @event.destroy
      respond_to do |format|
        format.html { redirect_to authors_events_path, notice: 'Event post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event = current_author.events.friendly.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def event_params
        params.require(:event).permit(:title, :body, :description, :banner_image_url, :author_id, :tag_list, :featured, :registerable)
      end

  end
end
