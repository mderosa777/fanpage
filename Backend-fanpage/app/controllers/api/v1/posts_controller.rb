class Api::V1::PostsController < ApplicationController
    def index
        posts = Post.all 
        render json: posts, include: [:comments]
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end


    def create
       
        post = Post.create!(post_params)
        render json: post
    end

    def update


    end

    private

    def post_params
        params.require(:post).permit(:img_url, :content, :user_id)
    end
end
