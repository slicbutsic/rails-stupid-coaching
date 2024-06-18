class PagesController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @search = params[:question]
    if @search.blank?
      redirect_to(ask_path)
    end

    if @search.include?('I am going to work')
      @response = 'Great!'
    elsif @search.include?('?')
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
