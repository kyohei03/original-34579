require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @user_1 = FactoryBot.create(:user)
    @user_2 = FactoryBot.create(:user)
    @memo = FactoryBot.create(:memo, user_id: @user_1.id)
    @comment = FactoryBot.build(:comment, user_id: @user_2.id, memo_id: @memo.id)
  end

  describe 'Dr.情報新規メモにコメントをする' do
    context 'Dr.情報新規メモにコメントできるとき' do
      it 'textが正しければコメントできる' do
      expect(@comment).to be_valid
    end
  end
  context 'Dr.情報新規メモにコメントできないとき' do
    it 'textが空ではコメントできない' do
      @comment.text = ''
      @comment.valid?
      expect(@comment.errors.full_messages).to include("Text can't be blank")
    end
  end
end
end
