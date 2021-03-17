require 'rails_helper'

RSpec.describe Memo, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @memo = FactoryBot.build(:memo, user_id: @user.id)
  end

  describe 'Dr.情報新規メモを投稿する' do
    context 'Dr.情報新規メモを投稿できるとき' do
      it 'hospital_nameとhospital_teacherとway_idとpace_idとremote_idとrecordが正しれば投稿できる' do
        expect(@memo).to be_valid
      end
    end
    context 'Dr.情報新規メモを投稿できないとき' do
      it 'hospital_nameが空では投稿できない' do
        @memo.hospital_name = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Hospital name can't be blank")
      end
      it 'hospital_teacherが空では投稿できない' do
        @memo.hospital_teacher = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Hospital teacher can't be blank")
      end
      it 'way_idが空では投稿できない' do
        @memo.way_id = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Way is not a number")
      end
      it 'pace_idが空では投稿できない' do
        @memo.pace_id = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Pace is not a number")
      end
      it 'remote_idが空では投稿できない' do
        @memo.remote_id = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Remote is not a number")
      end
      it 'Recordが空では投稿できない' do
        @memo.record = ''
        @memo.valid?
        expect(@memo.errors.full_messages).to include("Record can't be blank")
      end
    end
  end
end