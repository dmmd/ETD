require 'spec_helper'

describe EtdsController do
  describe "#new" do
    it "should set a template ETD" do 
      get :new 
      response.should be_successful
      assigns[:etd].should be_kind_of Etd
    end
  end
  
  describe "#create" do
    before do 
       @count = Etd.count
    end

    it "should create an ETD" do
       post :create, :etd => { :author => 'me', :title => 'my title', :abstract => 'my abstract'}
       response.should redirect_to root_path
       Etd.count.should == @count+1
       flash[:notice].should == 'ETD created'
    end

  end
end
