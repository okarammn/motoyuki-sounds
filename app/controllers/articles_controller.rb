class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end

  def create
    Articre.create(title: article_params[:title], text: article_params[:text], image: article_params[:image], user_id: current_user.id)
  end
  
  private
  
  def article_params
    paramas.require(:article).permit(:title, :text, :image)
  end
end
