class TodolistsController < ApplicationController
  def new
  	#Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する
  	@list=List.new
  end
  #投稿作成
  def create
  	#ストロングパラメーターを使用
  	list=List.new(list_params)
  	#DBへ保存する
  	list.save
  	#詳細画面へリダイレクト
  	redirect_to todolist_path(list.id)
  end
  #投稿一覧
  def index
  	@lists=List.all
  end
  #詳細
  def show
  	@list=List.find(params[:id])
  end
  #編集
  def edit
  	@list=List.find(params[:id])
  end
  #投稿更新
  def update
  	list=List.find(params[:id])
  	list.update(list_params)
  	redirect_to todolist_path(list.id)
  end
  def destroy
  	
  end

  private

  def list_params
  	params.require(:list).permit(:title, :body, :image)
  end
end
