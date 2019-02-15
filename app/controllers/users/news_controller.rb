module Users
  class NewsController < AuthorController
    before_action :set_news, only: [:show, :edit, :update, :destroy, :publish, :unpublish]

    # GET /news
    # GET /news.json
    def index
      @news = current_author.news.most_recent.list_for(params[:page], params[:tag])
    end

    # GET /news/1
    # GET /news/1.json
    def show
    end

    # GET /news/new
    def new
      @news = current_author.news.new
    end

    # GET /news/1/edit
    def edit
    end

    def publish
      @news.publish
      redirect_to authors_news_index_path
    end

    def unpublish
      @news.unpublish
      redirect_to authors_news_index_path
    end

    # POST /news
    # POST /news.json
    def create
      @news = current_author.news.new(news_params)

      respond_to do |format|
        if @news.save
          format.html { redirect_to authors_news_path(@news), notice: 'News post was successfully created.' }
          format.json { render :show, status: :created, location: @news }
        else
          format.html { render :new }
          format.json { render json: @news.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /news/1
    # PATCH/PUT /news/1.json
    def update
      respond_to do |format|
        if @news.update(news_params)
          format.html { redirect_to authors_news_path(@news), notice: 'News post was successfully updated.' }
          format.json { render :show, status: :ok, location: @news }
        else
          format.html { render :edit }
          format.json { render json: @news.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /news/1
    # DELETE /news/1.json
    def destroy
      @news.destroy
      respond_to do |format|
        format.html { redirect_to authors_news_path, notice: 'News post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_news
        @news = current_author.news.friendly.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def news_params
        params.require(:news).permit(:title, :body, :description, :banner_image_url, :author_id, :tag_list, :featured)
      end
  end
end
