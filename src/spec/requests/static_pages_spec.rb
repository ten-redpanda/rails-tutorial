require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /home" do
    it "renders a successful response" do
      get static_pages_home_url
      expect(response).to be_successful
    end
  end

  describe "GET /help" do
    it "renders a successful response" do
      get static_pages_help_url
      expect(response).to be_successful
    end
  end

  describe "GET /about" do
    it "renders a successful response" do
      get static_pages_about_url
      expect(response).to be_successful
    end
  end

  describe "GET /contact" do
    it "renders a successful response" do
      get static_pages_contact_url
      expect(response).to be_successful
    end
  end
end
