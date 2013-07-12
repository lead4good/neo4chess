require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CommentariesController do

  # This should return the minimal set of attributes required to create a valid
  # Commentary. As you add validations to Commentary, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CommentariesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all commentaries as @commentaries" do
      commentary = Commentary.create! valid_attributes
      get :index, {}, valid_session
      assigns(:commentaries).should eq([commentary])
    end
  end

  describe "GET show" do
    it "assigns the requested commentary as @commentary" do
      commentary = Commentary.create! valid_attributes
      get :show, {:id => commentary.to_param}, valid_session
      assigns(:commentary).should eq(commentary)
    end
  end

  describe "GET new" do
    it "assigns a new commentary as @commentary" do
      get :new, {}, valid_session
      assigns(:commentary).should be_a_new(Commentary)
    end
  end

  describe "GET edit" do
    it "assigns the requested commentary as @commentary" do
      commentary = Commentary.create! valid_attributes
      get :edit, {:id => commentary.to_param}, valid_session
      assigns(:commentary).should eq(commentary)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Commentary" do
        expect {
          post :create, {:commentary => valid_attributes}, valid_session
        }.to change(Commentary, :count).by(1)
      end

      it "assigns a newly created commentary as @commentary" do
        post :create, {:commentary => valid_attributes}, valid_session
        assigns(:commentary).should be_a(Commentary)
        assigns(:commentary).should be_persisted
      end

      it "redirects to the created commentary" do
        post :create, {:commentary => valid_attributes}, valid_session
        response.should redirect_to(Commentary.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved commentary as @commentary" do
        # Trigger the behavior that occurs when invalid params are submitted
        Commentary.any_instance.stub(:save).and_return(false)
        post :create, {:commentary => { "title" => "invalid value" }}, valid_session
        assigns(:commentary).should be_a_new(Commentary)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Commentary.any_instance.stub(:save).and_return(false)
        post :create, {:commentary => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested commentary" do
        commentary = Commentary.create! valid_attributes
        # Assuming there are no other commentaries in the database, this
        # specifies that the Commentary created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Commentary.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => commentary.to_param, :commentary => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested commentary as @commentary" do
        commentary = Commentary.create! valid_attributes
        put :update, {:id => commentary.to_param, :commentary => valid_attributes}, valid_session
        assigns(:commentary).should eq(commentary)
      end

      it "redirects to the commentary" do
        commentary = Commentary.create! valid_attributes
        put :update, {:id => commentary.to_param, :commentary => valid_attributes}, valid_session
        response.should redirect_to(commentary)
      end
    end

    describe "with invalid params" do
      it "assigns the commentary as @commentary" do
        commentary = Commentary.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Commentary.any_instance.stub(:save).and_return(false)
        put :update, {:id => commentary.to_param, :commentary => { "title" => "invalid value" }}, valid_session
        assigns(:commentary).should eq(commentary)
      end

      it "re-renders the 'edit' template" do
        commentary = Commentary.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Commentary.any_instance.stub(:save).and_return(false)
        put :update, {:id => commentary.to_param, :commentary => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested commentary" do
      commentary = Commentary.create! valid_attributes
      expect {
        delete :destroy, {:id => commentary.to_param}, valid_session
      }.to change(Commentary, :count).by(-1)
    end

    it "redirects to the commentaries list" do
      commentary = Commentary.create! valid_attributes
      delete :destroy, {:id => commentary.to_param}, valid_session
      response.should redirect_to(commentaries_url)
    end
  end

end
