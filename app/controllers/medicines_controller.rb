class MedicinesController < ApplicationController
  def index
    @medicine = Medicine.all
    render "new"
  end
end
