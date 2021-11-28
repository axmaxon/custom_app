require 'rails_helper'

RSpec.describe "Events", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/"

      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/events/new"

      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      event = FactoryBot.create(:event)

      get "/events/#{event[:id]}/edit"

      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http status 302" do
      event_attributes = FactoryBot.attributes_for(:event)

      post "/events", params: { event: event_attributes }

      expect(response).to have_http_status('302')
    end
  end

  describe "PATCH /update" do
    it "returns http status 302" do
      event = FactoryBot.create(:event)
      attributes = event.attributes

      patch "/events/#{event[:id]}", params: { event: attributes }

      expect(response).to have_http_status('302')
    end
  end

  describe "GET /destroy" do
    it "returns status 302 " do
      event = FactoryBot.create(:event)

      delete "/events/#{event[:id]}"

      expect(response).to have_http_status('302')
    end
  end
end
