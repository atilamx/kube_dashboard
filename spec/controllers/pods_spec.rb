require 'rails_helper'

RSpec.describe PodsController do
  describe "GET index" do
     it "gets the list of the servers" do       
       get :index
       expect(response).to render_template("index")
     end    
  end
end
