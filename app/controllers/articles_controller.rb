class ArticlesController < ApplicationController

  before_action :find_user, only: [:update,:show,:edit,:destroy]

  def new
    @article = Article.new
  end

  def index
    @articles = Article.all
  end
  
  def show
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
  
  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy 
    redirect_to articles_path
  end

  private
   
    def find_user
      @user = User.find(params[:article][:user_id])
    end

    def article_params
      params.require(:article).permit(:title,:summary,:text,:user_id)
    end

end
