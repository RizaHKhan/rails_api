class ArticlesController < ApplicationController
  def index
    article = Article.all
    render json: article
  end

  def show
  end
end