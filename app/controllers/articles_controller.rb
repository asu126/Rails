class ArticlesController < ApplicationController
	def new
		@article = Article.new
    end


    # def create
    # 	# render plain: params[:article].inspect
    # 	@article = Article.new(params[:article])
 
    #     @article.save
    #     redirect_to @article
    # end

    public
    def show
      @article = Article.find(params[:id])
    end
    
    public
    def index
      @articles = Article.all
    end

    public
    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])
 
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end
 
    private
      def article_params
        params.require(:article).permit(:title, :text)
      end
    
    public
    def destroy
      @article = Article.find(params[:id])
      @article.destroy
     
      redirect_to articles_path
    end
    # def create
    #   @article = Article.new(article_params)
 
    #   @article.save
    #   redirect_to @article
    # end
 
    # private
    # def article_params
    #   params.require(:article).permit(:title, :text)
    # end

    def create
      @article = Article.new(article_params)
    
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
    end
 
    private
      def article_params
        params.require(:article).permit(:title, :text)
      end
end
