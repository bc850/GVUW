module Home
  class NewsController < HomeController
    # GET /news
    # GET /news.json
    def index
      @news = news_prefix.list_for(params[:page], params[:tag])
    end

    # GET /news/1
    # GET /news/1.json
    def show
      @news = news_prefix.friendly.find(params[:id])
    end

    private

    def news_prefix
      News.published
    end
  end
end
