module Authors
  class PartnersController < AuthorController
    before_action :set_partner, only: [:show, :edit, :update, :destroy, :publish, :unpublish]

    def index
      @partners = Partner.alphabetical
    end

    def new
      @partner = Partner.new
    end

    def show
    end

    def publish
      @partner.publish
      redirect_to authors_partners_path
    end

    def unpublish
      @partner.unpublish
      redirect_to authors_partners_path
    end

    # POST /events
    # POST /events.json
    def create
      @partner = Partner.new(event_params)

      respond_to do |format|
        if @partner.save
          format.html { redirect_to authors_partner_path(@partner), notice: 'Partner was successfully created.' }
          format.json { render :show, status: :created, location: @partner }
        else
          format.html { render :new }
          format.json { render json: @partner.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /events/1
    # PATCH/PUT /events/1.json
    def update
      respond_to do |format|
        if @partner.update(partner_params)
          format.html { redirect_to authors_event_path(@partner), notice: 'Partner was successfully updated.' }
          format.json { render :show, status: :ok, location: @partner }
        else
          format.html { render :edit }
          format.json { render json: @partner.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /news/1
    # DELETE /news/1.json
    def destroy
      @partner.destroy
      respond_to do |format|
        format.html { redirect_to authors_partners_path, notice: 'Partner was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_partner
        @partner = Partner.friendly.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def partner_params
        params.require(:partner).permit(:name, :logo, :description, :body, :slug, :tag_list, :published)
      end

  end
end
