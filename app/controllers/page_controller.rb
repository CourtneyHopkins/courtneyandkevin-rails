class PageController < ApplicationController
  def home
    layout 'home'
  end

  def proposal
  end

  def wedding
  end

  def gallery

  end

  def field_notes
    @posts = Post.all
  end
end
