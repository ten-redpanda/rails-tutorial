require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET root" do
    it "renders a successful response" do
      get root_path
      expect(response).to be_successful
    end
  end

  describe "GET /help" do
    it "renders a successful response" do
      get help_path
      expect(response).to be_successful
    end
  end

  describe "GET /about" do
    it "renders a successful response" do
      get about_path
      expect(response).to be_successful
    end
  end

  describe "GET /contact" do
    it "renders a successful response" do
      get contact_path
      expect(response).to be_successful
    end
  end
end
