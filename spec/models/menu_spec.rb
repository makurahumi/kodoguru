require 'rails_helper'

RSpec.describe Menu, type: :model do
  # 仮データを読み込み
    before do
      @user = FactoryBot.create(:user)
      @restaurant = FactoryBot.create(:restaurant)
    end

  describe '#create' do
    # 全て入力した場合
      it "全て入力すれば投稿可" do
        menu = build(:menu)
        expect(menu).to be_valid
      end

    # 必須項目が空の場合
      it "menunameが空の場合は投稿不可" do
        menu = build(:menu, menuname: "")
        menu.valid?
        expect(menu.errors[:menuname]).to include("を入力してください")
      end

      it "priceが空の場合は投稿不可" do
        menu = build(:menu, price: "")
        menu.valid?
        expect(menu.errors[:price]).to include("を入力してください")
      end

    # 任意部分が空の場合
      it "detailが空でも投稿可" do
        menu = build(:menu, detail: "")
        expect(menu).to be_valid
      end

    # 必須だが空でも可の場合(以下はエラー回避も含めて実装を行う為、テスト)
      it "photoが空でも投稿可" do
        menu = build(:menu, photo: "")
        expect(menu).to be_valid
      end
  end
end
