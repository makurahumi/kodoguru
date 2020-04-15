require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe '#create' do
  # 全て入力した場合は、restaurant.modelのuserアソシエーションにoptional:trueを付加
  #  it "全て入力すれば投稿可" do
  #    restaurant = build(:restaurant)
  #    expect(restaurant).to be_valid
  #  end

  # 必須項目が空の場合
    it "nameが空の場合は投稿不可" do
      restaurant = build(:restaurant, name: "")
      restaurant.valid?
      expect(restaurant.errors[:name]).to include("can't be blank")
    end

    it "cuisine_idが空の場合は投稿不可" do
      restaurant = build(:restaurant, cuisine_id: "")
      restaurant.valid?
      expect(restaurant.errors[:cuisine_id]).to include("can't be blank")
    end

    it "form_idが空の場合は投稿不可" do
      restaurant = build(:restaurant, form_id: "")
      restaurant.valid?
      expect(restaurant.errors[:form_id]).to include("can't be blank")
    end

    it "prefecture_idが空の場合は投稿不可" do
      restaurant = build(:restaurant, prefecture_id: "")
      restaurant.valid?
      expect(restaurant.errors[:prefecture_id]).to include("can't be blank")
    end

    it "cityが空の場合は投稿不可" do
      restaurant = build(:restaurant, city: "")
      restaurant.valid?
      expect(restaurant.errors[:city]).to include("can't be blank")
    end

  # 任意部分が空の場合
    # 以下のテストは、restaurant.modelのuserアソシエーションにoptional:trueを付加
    # it "detailが空でも投稿可" do
    #   restaurant = build(:restaurant, detail: "")
    #   expect(restaurant).to be_valid
    # end

    # it "blockが空でも投稿可" do
    #   restaurant = build(:restaurant, block: "")
    #   expect(restaurant).to be_valid
    # end

    # it "building_nameが空でも投稿可" do
    #   restaurant = build(:restaurant, building_name: "")
    #   expect(restaurant).to be_valid
    # end

    # it "accsessが空でも投稿可" do
    #   restaurant = build(:restaurant, accsess: "")
    #   expect(restaurant).to be_valid
    # end

    # it "holidayが空でも投稿可" do
    #   restaurant = build(:restaurant, holiday: "")
    #   expect(restaurant).to be_valid
    # end

    # it "openが空の場合でも投稿可" do
    #   restaurant = build(:restaurant, open: "")
    #   expect(restaurant).to be_valid
    # end

    # it "closedが空の場合でも投稿可" do
    #   restaurant = build(:restaurant, closed: "")
    #   expect(restaurant).to be_valid
    # end
  end
end
