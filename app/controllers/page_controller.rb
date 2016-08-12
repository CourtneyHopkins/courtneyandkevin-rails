class PageController < ApplicationController
  def home
    render layout: 'home'
  end

  def proposal
  end

  def wedding
  end

  def gallery
    @galleries = Gallery.order( :created_at )
  end

  def our_adventures
    @posts = Post.all
    if params[:slug]
      render "adventures/#{params[:slug]}"
    end
  end
end
