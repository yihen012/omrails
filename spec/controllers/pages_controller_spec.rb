require 'spec_helper'

describe PagesController, :type => :controller do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get :home
      expect(response.status).to eq(200)
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get :about
      expect(response.status).to eq(200)
    end
  end
end
