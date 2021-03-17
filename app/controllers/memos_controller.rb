class MemosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :memo_find, only: [:show, :edit, :update, :destroy]

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memos_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @memo.comments
  end

  def edit
    unless current_user == @memo.user
      redirect_to action: :index
    end
  end

  def update
    if @memo.update(memo_params)
      redirect_to memo_path
    else
      render :edit
    end
  end

  def destroy
    @memo.destroy
    redirect_to root_path
  end

  private
  def memo_params
    params.require(:memo).permit(:hospital_name, :hospital_teacher, :way_id, :pace_id, :remote_id, :record).merge(user_id: current_user.id)
  end

  def memo_find
    @memo = Memo.find(params[:id]) 
  end
end
