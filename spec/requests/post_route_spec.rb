require 'rails_helper'

describe "post a cat route", :type => :request do

  before do
    post '/cats', params: { :name => 'cat_name', :breed => 'cat_breed', :age => 8 }
  end

  it 'returns the name of the cat' do
    expect(JSON.parse(response.body)['name']).to eq('cat_name')
  end

  it 'returns the breed of the cat' do
    expect(JSON.parse(response.body)['breed']).to eq('cat_breed')
  end

  it 'returns the age of the cat' do
    expect(JSON.parse(response.body)['age']).to eq('8')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end


end
