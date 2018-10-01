module Home
  class PagesController < HomeController
    before_action :set_campaign

    def about

    end

    def contact

    end

    def home
      @news = News.published.featured.order(created_at: :desc).limit(3)
      @events = Event.published.featured.order(created_at: :desc).limit(3)
    end

    private

    def set_campaign
      @campaign = Campaign.published.most_recent
    end

    def why_live_united
    end

    def our_work
    end
  end
end
