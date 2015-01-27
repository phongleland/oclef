class HomeController < ApplicationController
  layout 'home'
  
  def dashboard
    render :layout => 'application'
  end
  
  def index
  end

  def about
  end

end
