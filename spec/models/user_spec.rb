require 'rails_helper'

  describe User do
    describe '#create' do
    # 全て入力した場合
      it "全て入力すれば登録可能" do
        user = build(:user)
        expect(user).to be_valid
      end

    # nicknameに関するテスト
      it "nicknameが空の場合は登録不可" do
        user = build(:user, nickname: "")
        user.valid?
        expect(user.errors[:nickname]).to include("を入力してください")
      end

      it "nicknameが重複した場合は登録不可" do
        user = create(:user)
        another_user = build(:user, nickname: user.nickname)
        another_user.valid?
        expect(another_user.errors[:nickname]).to include("はすでに存在します")
      end

      it "nicknameが10文字以上の場合は登録不可" do
        user = build(:user, nickname: "takanamiyuko")
        user.valid?
        expect(user.errors[:nickname]).to include("は10文字以内で入力してください")
      end

      it "nicknameが10文字以下の場合は登録可能" do
        user = build(:user, nickname: "takanamiyu")
        expect(user).to be_valid
      end

    # emailに関するテスト
      it "emailが空の場合は登録不可" do
        user = build(:user, email: "")
        user.valid?
        expect(user.errors[:email]).to include("を入力してください")
      end

      it "emailが重複すると登録不可" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("はすでに存在します")
      end

      it "emailに@が含まれない場合は登録不可" do
        user = build(:user, email: "sonnabanana")
        user.valid?
        expect(user.errors[:email]).to include("は不正な値です")
      end

      it "emailの@以前に文字がない場合は登録不可" do
        user = build(:user, email: "@test.com")
        user.valid?
        expect(user.errors[:email]).to include("は不正な値です")
      end

      it "emailの@以後に文字がない場合は登録不可" do
        user = build(:user, email: "nonedate@")
        user.valid?
        expect(user.errors[:email]).to include("は不正な値です")
      end

    # passwordに関するテスト
      it "passwordが空の場合は登録不可" do
        user = build(:user, password: "")
        user.valid?
        expect(user.errors[:password]).to include("を入力してください")
      end

      it "passwordが6文字以下の場合は登録不可" do
        user = build(:user, password: "nakan")
        user.valid?
        expect(user.errors[:password]).to include("は6文字以上で入力してください")
      end

      it "passwordが6文字以上の場合は登録可" do
        user = build(:user, password: "konkon", password_confirmation: "konkon")
        user.valid?
        expect(user).to be_valid
      end

      it "password_confirmationがpasswordと一致しない場合は登録不可" do
        user = build(:user, password_confirmation: "")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
      end
    end
  end