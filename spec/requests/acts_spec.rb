require 'rails_helper'

RSpec.describe "Acts", type: :request do
  describe "GET /acts" do
    it "works! (now write some real specs)" do
      get acts_path
      expect(response).to have_http_status(200)
    end
  end
end
