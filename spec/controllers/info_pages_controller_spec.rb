require 'spec_helper'

describe InfoPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'mission'" do
    it "returns http success" do
      get 'mission'
      response.should be_success
    end
  end


  describe "GET 'aa'" do
    it "returns http success" do
      get 'aa'
      response.should be_success
    end
  end

  describe "GET 'na'" do
    it "returns http success" do
      get 'na'
      response.should be_success
    end
  end

  describe "GET 'community'" do
    it "returns http success" do
      get 'community'
      response.should be_success
    end
  end

  describe "GET 'tos'" do
    it "returns http success" do
      get 'tos'
      response.should be_success
    end
  end

  describe "GET 'privacy'" do
    it "returns http success" do
      get 'privacy'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'colophon'" do
    it "returns http success" do
      get 'colophon'
      response.should be_success
    end
  end

end
