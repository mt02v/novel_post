class CommentsController < ApplicationControlle
  before_action :set_novel

  def create
    @post.comments.create! comments_params
    redirect_to @novel
  end

  def destroy
    @post.comments.destroy params[:id]
    redirect_to @novel
  end

  private
    def set_novel
      @post = Novel.find(params[:id])
    end

    def comments_params
      params.required(:comment).permit(:content)
    end
end