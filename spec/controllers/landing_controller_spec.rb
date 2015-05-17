require 'rails_helper'

RSpec.describe LandingController, type: :controller do

  describe "GET #no_info" do
    it "returns http success" do
      get :no_info
      expect(response).to have_http_status(:success)
    end
  end

end
