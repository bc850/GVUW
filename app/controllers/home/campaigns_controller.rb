module Home
  class CampaignsController < HomeController
    # GET /campaigns
    # GET /campaigns.json
    def index
      @campaigns = campaign_prefix.list_for(params[:page], params[:tag])
    end

    # GET /campaigns/1
    # GET /campaigns/1.json
    def show
      @campaign = campaign_prefix.friendly.find(params[:id])

      # get the percentage for total collected / campaign goal
      # used for progress bar width
      @campaign_percentage = @campaign.campaign_math
    end

    private

    def campaign_prefix
      Campaign.published
    end
  end
end
