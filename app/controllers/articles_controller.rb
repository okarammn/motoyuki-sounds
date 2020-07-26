class ArticlesController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @articles = Article.all.order("created_at DESC").page(params[:page]).per(5)  #allは省略可
  end
  
  def new
    @article = Article.new
  end

  def create
    Article.create(title: article_params[:title], text: article_params[:text], image: article_params[:image])
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def edit
    @article = Article.find(params[:id])
        
  end
  
  def update
    article = Article.find(params[:id])
    article.update(article_params)
  end
  
  def destroy
    article = Article.find(params[:id])
    article.destroy
  end

  
  private
  
  def article_params
    params.require(:article).permit(:title, :text, :image)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end 
end
