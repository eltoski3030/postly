class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @new_post = Post.new
        @all_posts = Post.order(created_at: :desc).all
      end
end
