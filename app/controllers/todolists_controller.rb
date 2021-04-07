class TodolistsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end

end