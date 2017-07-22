require 'rails_helper'

describe "post a cat route", :type => :request do

  before do
    post '/cats', params: { :name => 'cat_name', :breed => 'test_content' }
  end

  it 'returns the name of the cat' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the breed of the cat' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
