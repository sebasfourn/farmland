require 'rails_helper'

RSpec.describe "Farms", type: :request do
  describe "GET /farms" do
    it "works" do
      farm = Farm.create(name: "test")
      get farm_path(id: farm.id)
      expect(response).to have_http_status(302)
    end
  end
end
