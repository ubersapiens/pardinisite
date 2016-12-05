class WelcomeController < ApplicationController
  def home
    @contact = Contact.new
  end

  def work
  end
end
