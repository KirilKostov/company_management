class Articles::CommentsController < ApplicationController

  before_filter do
    @article = Article.find(params[:article_id])
  end

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new params[:comment]

    if @comment.save

      @article.comments << @comment
      current_user.comments << @comment

      redirect_to article_path(@article)
    else
      render template: 'articles/show'
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to article_path(@article)
  end

end