class PostsController < ApplicationController
  def new
    @post = Post.new

  end

def index

  @posts =  Post.all.paginate(page: params[:page], per_page: 5)
end

def show
  @post = Post.find(params[:id])

end

def create
  @post = Post.new(permit_post)
  if @post.save
    flash[:success] = "Your image has been Uploaded"
    redirect_to post_path(@post)

  else

    flash[:error] = @post.error.full_message
    redirect_to new_post_path
end
end

private
def permit_post
    params.require(:post).permit(:image, :description)

end

def destroy
  @post.destroy
  respond_to do |format|
    format.html { redirect_to posts_path, notice: 'Picture was successfully destroyed.' }
    format.json { head :no_content }
  end
end

end
