class ArticlesController < ApplicationController
  def index
    article = Article.all
    render json: articles
  end

  def show
  end
end