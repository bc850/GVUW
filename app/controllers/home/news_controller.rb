module Home
  class NewsController < HomeController
    # GET /news
    # GET /news.json
    def index
      @news = News.most_recent.published.paginate(:page => params[:page], :per_page => 3)
    end

    # GET /news/1
    # GET /news/1.json
    def show
      @news = News.friendly.find(params[:id])
    end
  end
end
