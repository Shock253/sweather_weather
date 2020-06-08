require 'rails_helper'

describe 'get foodie route', type: :request do
  it 'returns status code 200' do
    get '/api/v1/foodie?start=denver,co&end=pueblo,co&search=italian'
    expect(response).to have_http_status(:success)
  end

  it 'returns proper attributes' do
    get '/api/v1/foodie?start=denver,co&end=pueblo,co&search=italian'
    expected_attributes = [
      "end_location",
      "travel_time",
      "forecast",
      "resturant"
     ]
    json = JSON.parse(response.body)
    expect(json["data"]["attributes"].keys).to match_array expected_attributes
  end

  it 'returns correct data' do
    
  end
end
