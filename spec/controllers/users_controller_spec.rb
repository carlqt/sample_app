#require 'spec_helper'
require_relative '../spec_helper'

describe UsersController do
=begin
  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end
=end

  render_views

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "#{@base_title} | Sign up")
    end
  end


end
