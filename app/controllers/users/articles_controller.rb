class Users::ArticlesController < ApplicationController

  before_filter do
    @user = User.find(params[:user_id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:article]

    if @article.save

      @user.articles << @article

      redirect_to user_path(@user)
    else
      render action: 'new'
    end
  end


  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to user_path(@user)
    else
      render action: 'edit'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to user_path(@user)
  end

end
