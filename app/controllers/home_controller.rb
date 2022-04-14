class HomeController < ApplicationController
  def index
    redirect_to products_url(format: '')
  end

  def error
    raise 'Test Error'
  end
end
