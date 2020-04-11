require 'rails_helper'

  describe User do
    describe '#create' do
      it "全て入力すれば登録可能" do
        user = build(:user)
        expect(user).to be_valid
      end

      it "nicknameが空の場合は登録不可" do
        user = build(:user, nickname: "")
        user.valid?
        expect(user.errors[:nickname]).to include("can't be blank")
      end
    end
  end