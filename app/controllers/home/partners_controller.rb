module Home
  class PartnersController < HomeController

    def index
      @partners = partner_prefix.list_for(params[:page], params[:tag])
    end

    private

    def partner_prefix
      Partner.published
    end

  end
end
