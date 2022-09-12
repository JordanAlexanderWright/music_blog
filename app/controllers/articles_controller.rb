class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description, :body))
    if @article.save
      flash[:notice] = "Article was saved correctly"
      redirect_to article_path(@article)
    else
      render 'new'
    end

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description, :body))
      flash[:notice] = "Article was edited"
      redirect_to articles_url
    else
      render 'edit'
    end
  end

end
