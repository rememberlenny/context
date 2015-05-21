require 'rails_helper'

RSpec.describe TopicsController, type: :controller do

  describe "GET #featured" do
    it "returns http success" do
      get :featured
      expect(response).to have_http_status(:success)
    end
  end

end
