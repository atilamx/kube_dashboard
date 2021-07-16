require 'rails_helper'

RSpec.describe PodsController do
  describe "GET index" do    
    describe 'when there is multiple servers running' do 
      it 'returns 200' do 
        get :index
        expect(response.code).to eq("200")
      end

      it 'returns a json payload' do 
        get :index
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end

      it 'returns a list of pods running' do 
        get :index
        expect(JSON.parse(response.body)).to eq({"test" => "some"})
      end
    end      
  end
end
