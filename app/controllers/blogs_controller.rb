class BlogsController < ApplicationController
    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.create(blog_params)
        if @blog.valid?
            redirect_to blogs_path
        else
            flash.now[:alert] = "Title must be unique and 10 characters long!"
            redirect_to new_blog_path
        end
    end
    
    def destroy
        @blog = Blog.find(params[:id])
        if @blog.destroy
            redirect_to blogs_path
        else
            redirect_to blog_path(@blog)
        end
    end

    def update
        @blog = Blog.find(params[:id])
        @blog.update(blog_params)
        if @blog.valid?
            redirect_to blog_path(@blog)
        else
            flash.now[:alert] = "Title must be unique and 10 characters long!"
            redirect_to blogs_path
        end
    end

    def edit
        @blog = Blog.find(params[:id])
    end

    private
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end
