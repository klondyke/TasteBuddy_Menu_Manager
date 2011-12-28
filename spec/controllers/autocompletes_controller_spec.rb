require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe AutocompletesController do

  def mock_autocomplete(stubs={})
    @mock_autocomplete ||= mock_model(Autocomplete, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all autocompletes as @autocompletes" do
      Autocomplete.stub(:all) { [mock_autocomplete] }
      get :index
      assigns(:autocompletes).should eq([mock_autocomplete])
    end
  end

  describe "GET show" do
    it "assigns the requested autocomplete as @autocomplete" do
      Autocomplete.stub(:find).with("37") { mock_autocomplete }
      get :show, :id => "37"
      assigns(:autocomplete).should be(mock_autocomplete)
    end
  end

  describe "GET new" do
    it "assigns a new autocomplete as @autocomplete" do
      Autocomplete.stub(:new) { mock_autocomplete }
      get :new
      assigns(:autocomplete).should be(mock_autocomplete)
    end
  end

  describe "GET edit" do
    it "assigns the requested autocomplete as @autocomplete" do
      Autocomplete.stub(:find).with("37") { mock_autocomplete }
      get :edit, :id => "37"
      assigns(:autocomplete).should be(mock_autocomplete)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created autocomplete as @autocomplete" do
        Autocomplete.stub(:new).with({'these' => 'params'}) { mock_autocomplete(:save => true) }
        post :create, :autocomplete => {'these' => 'params'}
        assigns(:autocomplete).should be(mock_autocomplete)
      end

      it "redirects to the created autocomplete" do
        Autocomplete.stub(:new) { mock_autocomplete(:save => true) }
        post :create, :autocomplete => {}
        response.should redirect_to(autocomplete_url(mock_autocomplete))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved autocomplete as @autocomplete" do
        Autocomplete.stub(:new).with({'these' => 'params'}) { mock_autocomplete(:save => false) }
        post :create, :autocomplete => {'these' => 'params'}
        assigns(:autocomplete).should be(mock_autocomplete)
      end

      it "re-renders the 'new' template" do
        Autocomplete.stub(:new) { mock_autocomplete(:save => false) }
        post :create, :autocomplete => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested autocomplete" do
        Autocomplete.stub(:find).with("37") { mock_autocomplete }
        mock_autocomplete.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :autocomplete => {'these' => 'params'}
      end

      it "assigns the requested autocomplete as @autocomplete" do
        Autocomplete.stub(:find) { mock_autocomplete(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:autocomplete).should be(mock_autocomplete)
      end

      it "redirects to the autocomplete" do
        Autocomplete.stub(:find) { mock_autocomplete(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(autocomplete_url(mock_autocomplete))
      end
    end

    describe "with invalid params" do
      it "assigns the autocomplete as @autocomplete" do
        Autocomplete.stub(:find) { mock_autocomplete(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:autocomplete).should be(mock_autocomplete)
      end

      it "re-renders the 'edit' template" do
        Autocomplete.stub(:find) { mock_autocomplete(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested autocomplete" do
      Autocomplete.stub(:find).with("37") { mock_autocomplete }
      mock_autocomplete.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the autocompletes list" do
      Autocomplete.stub(:find) { mock_autocomplete }
      delete :destroy, :id => "1"
      response.should redirect_to(autocompletes_url)
    end
  end

end
