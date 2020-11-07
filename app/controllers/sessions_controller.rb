class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(name: params[:name])

    if @user
      session[:user_id] = @user.id
      flash[:notice] = 'You have logged in successfully!'
      redirect_to homepage_index_path
    else
      flash[:alert] = 'Name not recognised!'
      redirect_to sign_up_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed out Successfully!'
  end
end
