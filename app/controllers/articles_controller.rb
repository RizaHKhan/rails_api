class ArticlesController < ApplicationController
  def index
    article = Article.recent.page(params[:page]).per(params[:per_page])
    render json: article
  end

  def show
  end
end
