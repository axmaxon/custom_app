require 'rails_helper'

describe EventsController, type: :controller do

  describe "GET #index" do
    it "has a 200 status code" do
      get :index

      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST #create" do
    it 'creates a new record with our attributes in the database' do
      event_attributes = { title: 'митап', location: 'БЦ Восход', starttime: '2021-11-28T00:00:00', organizermail: 'ww@ee.ru'}

      expect { post :create, params: { event: event_attributes } }.to change(Event, :count)
      expect(Event.last).to have_attributes(title: 'митап', location: 'БЦ Восход', organizermail: 'ww@ee.ru')
    end
  end
end
