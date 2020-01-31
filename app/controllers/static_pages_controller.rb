class StaticPagesController < ApplicationController
  def home
    @random = rand(4)
  end

  def help
  end

  def about
  end
  
  def contact
  end
end
