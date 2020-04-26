require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
  let(:user) { create(:user)}
  let(:restaurant) { create(:restaurant) }

  describe "GET #index" do
    context "ログインしている場合" do
      before do
        login user
        get :index
      end

      it "index.html.hamlに遷移すること" do
        expect(response).to render_template :index
      end

      it "@restaurantに正しい値が入っている" do
        restaurants = create_list(:restaurant, 3)
        expect(assigns(:restaurants)).to match(restaurants.sort{ |a,b| b.created_at <=> a.created_at })
      end
    end

    context "ログインしていない場合" do
      before do
        get :index
      end

      it "index.html.hamlに遷移すること" do
        expect(response).to render_template :index
      end
    end
  end

  # newアクションのテスト
    describe "GET #new" do
      context "ログインしている場合" do
        before do
          login user
        end

        it "new.html.hamlに遷移する" do
          get :new
          expect(response).to render_template :new
        end
      end

      context "ログインしていない場合" do
        it "ログイン画面に遷移する" do
          get :new
          expect(response).to redirect_to(new_user_session_path)
        end
      end
    end

  # editアクションのテスト
    describe "GET #edit" do
      context "ログインしている場合" do
        before do
          login user
          get :edit, params: { id: restaurant }
        end

        it "@restaurantに正しい値が入っている" do
          expect(assigns(:restaurant)).to eq restaurant
        end

        it "edit.html.hamlに遷移する" do
          expect(response).to render_template :edit
        end
      end
    end

  #showアクションのテスト
    describe "GET #show" do
      context "ログインしている場合" do
        before do
          login user
          get :show, params: { id: restaurant}
        end

        it "@restaurantに正しい値が入っていること" do
          expect(assigns(:restaurant)).to eq restaurant
        end

        it "show.html.hamlに遷移すること" do
          expect(response).to render_template :show
        end
      end
    end
end