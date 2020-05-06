class ArticlesController < ApplicationController
  def index
    article = Article.recent
    render json: article
  end

  def show
  end
end
