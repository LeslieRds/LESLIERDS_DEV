class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new create update destroy]


  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      # Redirect to the article show page
      redirect_to article_path(@article), notice: 'Le nouvel article a bien été créé !'
    else
      # Render the new article form
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to @article, status: :see_other
  end

  def destroy
    set_article.user
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :content, :category)
  end
end
