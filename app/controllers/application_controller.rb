class ApplicationController < ActionController::API
  render :file => 'public/404.html', :status => :not_found, :layout => false
end
