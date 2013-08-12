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
  
  describe "GET 'show'" do
    before(:each) do
      @user = Factory(:user)
    end
    
    it "should be successful" do
      get :show, :id => @user.id
      response.should be_success
    end
    
    it "should find the right user" do
      get :show, :id => @user.id
      #reaches to the users controller and assigns the value of instance variable @user to :user
      assigns(:user).should == @user
    end
  end

  describe "GET 'new'" do
    it "returns http success" do
      get :new
      response.should be_success
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "#{@base_title} | Sign up")
    end
  end


end
