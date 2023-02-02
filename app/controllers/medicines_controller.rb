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

  def edit
    @medicine = Medicine.find(params[:id])
    render :edit
  end

  def destroy
    medicine = Medicine.find(params[:id])
    medicine.destroy
    redirect_to "/medicines"
  end

  def update
    @medicine = Medicine.find(params[:id])
    @medicine.update(
    name: params[:name] ||@medicine.name,
    dosage: params[:dosage] || @medicine.dosage,
    frequency: params[:frequency] || @medicine.frequency,
    user_id: session[:user_id]
  )
    if @medicine.save
    redirect_to "/medicines"
    end
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