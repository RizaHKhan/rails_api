require 'rails_helper'

describe 'articles routes' do
  it 'should route to articles index' do
    expect(get '/articles').to route_to('articles#index')
  end

  it 'should route to articles show' do
    article = create :article
    expect(get "/articles/#{article.id}").to route_to("articles#show", id: "#{article.id}")
  end
end