module Home
  class PagesController < HomeController
    def about

    end

    def contact

    end

    def home
      @news = News.order(created_at: :desc).limit(3)
    end
  end
end
