require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

    let(:params) {{name: "カオル"}}
    
    it "年齢１,性別 man：ユーザーの名前が「〜くん」と取得できること" do
      params.merge!(age: 1, gender: "man")
      user = User.new(params)
      expect(user.disp_name).to eq "カオルくん"
    end

    it "年齢3,性別 woman：ユーザーの名前が「〜ちゃん」と取得できること" do
      params.merge!(age: 3, gender: "woman")
      user = User.new(params)
      expect(user.disp_name).to eq "カオルちゃん"
    end

    it "年齢１５,性別 woman：ユーザーの名前が「〜さん」と取得できること" do
      params.merge!(age: 15, gender: "woman")
      user = User.new(params)
      expect(user.disp_name).to eq "カオルさん"
    end

    it "年齢１7,性別 man：ユーザーの名前が「〜君」と取得できること" do
      params.merge!(age: 17, gender: "man")
      user = User.new(params)
      expect(user.disp_name).to eq "カオル君"
    end

    it "年齢２０,性別 man：ユーザーの名前が「Mr.〜」と取得できること" do
      params.merge!(age: 20, gender: "man")
      user = User.new(params)
      expect(user.disp_name).to eq "Mr.カオル"
    end

    it "年齢34,性別 woman：ユーザーの名前が「Ms.〜」と取得できること" do
      params.merge!(age: 34, gender: "woman")
      user = User.new(params)
      expect(user.disp_name).to eq "Ms.カオル"
    end

    it "年齢-1：不正な値ですと取得できること" do
      params.merge!(age: -1, gender: nil)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です"
    end
  end
end




