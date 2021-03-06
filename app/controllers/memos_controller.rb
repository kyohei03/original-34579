class MemosController < ApplicationController

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = Memo.new(memo_params)
    if @memos.save
      redirect_to root_path
    else
      render :new
    end
  end
end
