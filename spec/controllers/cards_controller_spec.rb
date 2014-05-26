require 'spec_helper'

describe CardsController, :type => :controller do
	render_views
  
  # This should return the minimal set of attributes required to create a valid
  # Card. As you add validations to Card, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { :user_id => 1, :description => 'testing', :name => 'testing' } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CardsController. Be sure to keep this updated too.
  let(:valid_session) { {:name => 'testing', :password => '123456789', :user_id => '1'} }


  describe "GET 'index'" do
    it "should be successfully loaded" do
      get :index
      expect(response.status).to eq(200)
    end
    
    it "assigns @cards" do
      card = Card.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:cards)).to eq([card])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get :show
      expect(response.status).to eq(302) #Found
    end
  end

  #describe "POST 'create'" do
    #describe "with valid params" do
     # it "creates a new Card" do
      #  expect{
       #   post :create, {:cards => valid_attributes}, valid_session
        #}.to change(Card, :length).by(1)
      #end

      #it "assigns a newly created card as @card" do
       # post :create, {:card => valid_attributes}, valid_session
        #assigns(:card).should be_a(Card)
        #assigns(:card).should be_persisted
      #end

       #it "redirects to the created card" do
        #post :create, {:card => valid_attributes}, valid_session
        #response.should redirect_to(Card.last)
      #end
    #end
  #end
end