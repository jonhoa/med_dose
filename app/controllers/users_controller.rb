class UsersController < ApplicationController
  def create
    user = User.create(
      firstname: params[:firstname],
      lastname: params[:lastname],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully Created User!"
      redirect_to "/medicines"
    else
      flash[:warning] = "Incorrect Email or Password"
      redicted_to "/signup"
    end
  end
end
