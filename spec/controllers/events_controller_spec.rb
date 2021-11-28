require 'rails_helper'

describe EventsController, type: :controller do

  describe "GET #index" do
    it "has a 200 status code" do
      get :index

      expect(response).to have_http_status(:ok)
    end
  end
end
