module Home
  class PartnersController < HomeController

    def index
      @partners = partner_prefix.list_for(params[:page], params[:tag])
    end

    def show
      @partner = partner_prefix.friendly.find(params[:id])
    end

    private

    def partner_prefix
      Partner.published
    end

  end
end
