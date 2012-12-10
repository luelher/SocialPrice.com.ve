class TrainingController < ApplicationController

  def index
    @posts = Post.order_by.page params[:page]  
    @page = params[:page]
  end

  def update
    @post = Post.find params[:id]
    @post.update_attributes(params[:post])
    @post.save
    @posts = Post.order_by.page params[:page]
    @page = params[:page]
    redirect_to '/training?page=' + params[:page].to_s
  end

  def destroy
    @post = Post.find params[:id]
    @post.delete unless @post.nil?
    redirect_to '/training?page=' + params[:page].to_s
  end

end
