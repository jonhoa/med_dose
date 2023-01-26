class MedicinesController < ApplicationController
  # authenticate and only show logged in user data
  def index
    if current_user = session[:user_id]
      @medicines = Medicine.where(user_id: current_user)
      render "index"
    else
      flash[:warning] = "You must be logged in to see this page"
      redirect_to "/login"
    end
  end
  
  def create
    @medicine = Medicine.create(
      name: params[:name],
      dosage: params[:dosage],
      frequency: params[:frequency],
      user_id: session[:user_id]
    )
    @medicine.save
    
    if @medicine.save
      redirect_to "/medicines"
    end
  end

  def destroy
    medicine = Medicine.find(params[:id])
    medicine.destroy
    redirect_to "/medicines"
  end
end


# def index
#   if current_user
#    @contacts = current_user.contacts
#    render “index.html.erb”
#   else 
#    flash[:warning] = “You must be logged in to see this page”
#    redirect_to ‘/login’
#   end
#  end