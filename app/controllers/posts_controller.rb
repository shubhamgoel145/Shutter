class PostsController < ApplicationController
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        respond_to do |f|
            if (@post.save)
                f.html {redirect_to "", notice: "Shouted!"}
            else
                f.html {redirect_to "", notice: "uh.. something went wrong!"}
            end
        end
    end
    
    private
    def post_params
        params.require(:post).permit(:user_id, :cotent)
    end
end 
