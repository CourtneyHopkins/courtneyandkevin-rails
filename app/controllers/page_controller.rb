class PageController < ApplicationController
  def home
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
