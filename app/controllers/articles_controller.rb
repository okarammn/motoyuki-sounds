class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end

  def create
    Article.create(title: article_params[:title], text: article_params[:text], image: article_params[:image])
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :text, :image)
  end
end
