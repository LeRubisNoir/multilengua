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

describe VocablesController do

  # This should return the minimal set of attributes required to create a valid
  # Vocable. As you add validations to Vocable, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "english" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VocablesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all vocables as @vocables" do
      vocable = Vocable.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:vocables)).to eq([vocable])
    end
  end

  describe "GET show" do
    it "assigns the requested vocable as @vocable" do
      vocable = Vocable.create! valid_attributes
      get :show, {:id => vocable.to_param}, valid_session
      expect(assigns(:vocable)).to eq(vocable)
    end
  end

  describe "GET new" do
    it "assigns a new vocable as @vocable" do
      get :new, {}, valid_session
      expect(assigns(:vocable)).to be_a_new(Vocable)
    end
  end

  describe "GET edit" do
    it "assigns the requested vocable as @vocable" do
      vocable = Vocable.create! valid_attributes
      get :edit, {:id => vocable.to_param}, valid_session
      expect(assigns(:vocable)).to eq(vocable)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Vocable" do
        expect {
          post :create, {:vocable => valid_attributes}, valid_session
        }.to change(Vocable, :count).by(1)
      end

      it "assigns a newly created vocable as @vocable" do
        post :create, {:vocable => valid_attributes}, valid_session
        expect(assigns(:vocable)).to be_a(Vocable)
        expect(assigns(:vocable)).to be_persisted
      end

      it "redirects to the created vocable" do
        post :create, {:vocable => valid_attributes}, valid_session
        expect(response).to redirect_to(Vocable.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved vocable as @vocable" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Vocable).to receive(:save).and_return(false)
        post :create, {:vocable => { "english" => "invalid value" }}, valid_session
        expect(assigns(:vocable)).to be_a_new(Vocable)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Vocable).to receive(:save).and_return(false)
        post :create, {:vocable => { "english" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested vocable" do
        vocable = Vocable.create! valid_attributes
        # Assuming there are no other vocables in the database, this
        # specifies that the Vocable created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Vocable).to receive(:update_attributes).with({ "english" => "MyString" })
        put :update, {:id => vocable.to_param, :vocable => { "english" => "MyString" }}, valid_session
      end

      it "assigns the requested vocable as @vocable" do
        vocable = Vocable.create! valid_attributes
        put :update, {:id => vocable.to_param, :vocable => valid_attributes}, valid_session
        expect(assigns(:vocable)).to eq(vocable)
      end

      it "redirects to the vocable" do
        vocable = Vocable.create! valid_attributes
        put :update, {:id => vocable.to_param, :vocable => valid_attributes}, valid_session
        expect(response).to redirect_to(vocable)
      end
    end

    describe "with invalid params" do
      it "assigns the vocable as @vocable" do
        vocable = Vocable.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Vocable).to receive(:save).and_return(false)
        put :update, {:id => vocable.to_param, :vocable => { "english" => "invalid value" }}, valid_session
        expect(assigns(:vocable)).to eq(vocable)
      end

      it "re-renders the 'edit' template" do
        vocable = Vocable.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Vocable).to receive(:save).and_return(false)
        put :update, {:id => vocable.to_param, :vocable => { "english" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested vocable" do
      vocable = Vocable.create! valid_attributes
      expect {
        delete :destroy, {:id => vocable.to_param}, valid_session
      }.to change(Vocable, :count).by(-1)
    end

    it "redirects to the vocables list" do
      vocable = Vocable.create! valid_attributes
      delete :destroy, {:id => vocable.to_param}, valid_session
      expect(response).to redirect_to(vocables_url)
    end
  end

end
