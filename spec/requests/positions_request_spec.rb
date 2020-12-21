require 'rails_helper'

RSpec.describe "Positions", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/positions/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/positions/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/positions/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/positions/show"
      expect(response).to have_http_status(:success)
    end
  end

end
