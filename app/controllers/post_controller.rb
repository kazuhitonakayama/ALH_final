class PostController < ApplicationController
    def new
        @post = Post.new
        @posts = Post.where(user: current_user).order("created_at ASC")
    end

    def create
        @post = Post.new(post_params)
        @posts = Post.where(user: current_user).order("created_at ASC")
        if @post.save
            redirect_to action: :new
        else
            redirect_to action: :new
        end
    end
    
    private
      def post_params
        params.require(:post).permit(:title).merge(user: current_user)
      end
end