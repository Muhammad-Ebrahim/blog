class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    def index
        @posts = Post.all
    end

    def new
      @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post, notice: "Man, You just created an amazing post, you are going to rock!"
        else
            render 'new', notice: "Hey YO, the post is not posted, check what happended"
        end
    end

    def edit
      
    end

    def update
      if @post.update(post_params)
        redirect_to @post, notice: "Man, You just updated an amazing post, you are going to rock!"
      else
        render 'edit', notice: "Hey YO, the post is not updated, check what happended"
      end
    end

    def destroy
      @post.destroy
      redirect_to posts_path
    end

    private
    #Define post pramas for the controller
    def post_params
      params.require(:post).permit(:title, :content, :description)
    end

    # a private method to help the CRUD actions find the post
    def find_post
      @post = Post.find(params[:id])
    end
end
