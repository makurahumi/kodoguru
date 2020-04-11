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

      it "nicknameが10文字以上の時は登録不可" do
        user = build(:user, nickname: "takanamiyuko")
        user.valid?
        expect(user.errors[:nickname]).to include("is too long (maximum is 10 characters)")
      end

      it "nicknameが10文字以下の場合は登録可能" do
        user = build(:user, nickname: "takanamiyu")
        expect(user).to be_valid
      end
    end
  end