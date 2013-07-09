class LandingController < ApplicationController
  
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO Send message here
      NotificationsMailer.new_message(@message).deliver
      
      redirect_to root_url, notice: "Message sent! Thank you for contacting us."
    else
      flash.now.alert = "Please fill all fields."
      render "index"
    end
  end
end