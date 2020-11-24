require 'pry'
class SessionsController < ApplicationController
  def new
    session[:name] = nil
  end

  def create 
    # binding.pry
    if params[:name] == nil || params[:name] == "" 
      redirect_to :login
    else 
      session[:name] = params[:name]
      redirect_to :root
    end 
  end 

  def destroy 
    session.delete(:name)
  end 
end
