class PostsController < ApplicationController
  before_action :set_post, except: [ :new, :create ]

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    post = Post.new( post_params )
    if post.save
      redirect_to post_path(post.slug)
    else
      redirect_to new_post_path
    end
  end

  def update
    if @post.update_attributes( post_params )
      redirect_to post_path( @post.slug )
    else
      redirect_to edit_post_path( @post.slug )
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    else
      redirect_to post_path( @post.slug )
    end
  end

  def post_params
    params.require( :post ).permit( :title, :body )
  end

  def set_post
    @post = Post.find_by( slug: params[ :id ] )
  end
end
