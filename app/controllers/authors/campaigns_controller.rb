module Authors
  class CampaignsController < AuthorController
    before_action :set_campaign, only: [:show, :edit, :update, :destroy, :publish, :unpublish]

    def index
      @campaigns = current_author.campaigns.most_recent.list_for(params[:page], params[:tag])
    end

    def new
      @campaign = current_author.campaigns.new
    end

    def show
    end

    def publish
      @campaign.publish
      redirect_to authors_campaigns_path
    end

    def unpublish
      @campaign.unpublish
      redirect_to authors_campaigns_path
    end

    def create
      @campaign = current_author.campaigns.new(campaign_params)

      respond_to do |format|
        if @campaign.save
          format.html { redirect_to authors_campaign_path(@campaign), notice: 'Campaign post was successfully created.' }
          format.json { render :show, status: :created, location: @campaign }
        else
          format.html { render :new }
          format.json { render json: @campaign.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @campaign.update(campaign_params)
          format.html { redirect_to authors_campaign_path(@campaign), notice: 'Campaigns post was successfully updated.' }
          format.json { render :show, status: :ok, location: @campaign }
        else
          format.html { render :edit }
          format.json { render json: @campaign.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @campaign.destroy
      respond_to do |format|
        format.html { redirect_to authors_campaigns_path, notice: 'Campaign post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_campaign
        @campaign = current_author.campaigns.friendly.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def campaign_params
        params.require(:campaign).permit(:year, :total, :campaign_goal, :percentage, :body, :author_id, :slug, :tag_list, :published, :published_at)
      end

  end
end
