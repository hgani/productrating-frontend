class HomeController < ApplicationController
  def index
    redirect_to products_url
  end

  def error
    raise 'Test Error'
  end
end
