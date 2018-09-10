module Home
  class NewsController < HomeController
    # GET /news
    # GET /news.json
    def index
      if params[:tag].present?
        @news = news_prefix.most_recent.published.tagged_with(params[:tag]).paginator
      else
        @news = news_prefix.most_recent.published.paginator
      end
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

    def paginator
      paginate(:page => params[:page], :per_page => 3)
    end
  end
end
