require 'rails_helper'

RSpec.describe "Applicants", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/applicants/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/applicants/new"
      expect(response).to have_http_status(:success)
    end
  end

end
