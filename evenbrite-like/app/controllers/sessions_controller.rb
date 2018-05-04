class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(name: params[:session].downcase)
    if user(params[:session][:name])
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      render 'new'
  end
end
end
