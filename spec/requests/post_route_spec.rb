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

  it 'will not save if name is empty' do
  post '/cats', params: { :name => '', :breed => 'cat_breed', :age => 5 }
      expect(response).to have_http_status(:unprocessable_entity)
  end

  it 'will not save if breed is empty' do
  post '/cats', params: { :name => 'cat_name', :breed => '', :age => 5 }
      expect(response).to have_http_status(:unprocessable_entity)
  end

  it 'will not save if age is empty' do
  post '/cats', params: { :name => 'cat_name', :breed => 'cat_breed', :age => '' }
      expect(response).to have_http_status(:unprocessable_entity)
  end
end

describe "post a dog route", :type => :request do

  before do
    post '/dogs', params: { :name => 'dog_name', :breed => 'dog_breed', :age => 5 }
  end

  it 'returns the name of the dog' do
    expect(JSON.parse(response.body)['name']).to eq('dog_name')
  end

  it 'returns the breed of the dog' do
    expect(JSON.parse(response.body)['breed']).to eq('dog_breed')
  end

  it 'returns the age of the dog' do
    expect(JSON.parse(response.body)['age']).to eq('5')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'will not save if name is empty' do
  post '/dogs', params: { :name => '', :breed => 'dog_breed', :age => 5 }
      expect(response).to have_http_status(:unprocessable_entity)
  end

  it 'will not save if breed is empty' do
  post '/dogs', params: { :name => 'dog_name', :breed => '', :age => 5 }
      expect(response).to have_http_status(:unprocessable_entity)
  end

  it 'will not save if age is empty' do
  post '/dogs', params: { :name => 'dog_name', :breed => 'dog_breed', :age => '' }
      expect(response).to have_http_status(:unprocessable_entity)
  end
end
