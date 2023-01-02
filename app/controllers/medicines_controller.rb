class MedicinesController < ApplicationController
  def index
    @medicine = Medicine.all
    render "index"
  end
  
  def create
    @medicine = Medicine.create(
      name: params[:name],
      dosage: params[:dosage],
      frequency: params[:frequency]
    )
    @medicine.save
    
    if @medicine.save
        redirect_to "/medicines"
    end
  end
end
