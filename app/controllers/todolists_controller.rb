class TodolistsController < ApplicationController
  
  def index
    @lists = List.all
  end  
  
  def show
    @list = List.find(params[:id])
  end  
  
  
  def new
    @list = List.new
  end
  
  # ---- ここからコードを書きましょう ---- #
  def create
    @list = List.new(list_params)
    if @list.save
      # flashというハッシュに :notice をいうキーで '投稿が完了しました！' という文字列の値を保存
      redirect_to todolist_path(@list.id), notice: '投稿が完了しました！' 
    else
      render :new
    end
  end
  
  def edit
    @list = List.find(params[:id])
  end  

  def update

    # ---- ここからコードを書きましょう ---- #
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
    # ---- ここまでのあいだにコードを書きましょう ---- #

  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
  # ---- ここまでのあいだにコードを書きましょう ---- #  
  
end
