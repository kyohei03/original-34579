class MemosController < ApplicationController

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    # binding.pry
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def memo_params
    params.require(:memo).permit(:hospital_name, :hospital_teacher, :way_id, :pace_id, :remote_id, :record).merge(user_id: current_user.id)
  end
end
