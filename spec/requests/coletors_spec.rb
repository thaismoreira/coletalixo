require 'rails_helper'

RSpec.describe "Coletors", :type => :request do
  describe "GET /coletors" do
    it "works! (now write some real specs)" do
      get coletors_path
      expect(response).to have_http_status(200)
    end
  end
end
