require 'rails_helper'

describe ArticlesController do
  describe  '#index' do
    it 'should return success response' do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  it 'should return proper json' do
    create_list :article, 2
    get :index
    json = JSON.parse(response.body)
    json_data = json['data']
    expect(json_data.length).to eq(2)

    expect(json_data[0]['attributes']).to eq({
      "title" => "Title 1",
      "content" => "Content 1",
      "slug" => "slug-1"
    })

    expect(json_data[1]['attributes']).to eq({
      "title" => "Title 2",
      "content" => "Content 2",
      "slug" => "slug-2"
    })
  end
end