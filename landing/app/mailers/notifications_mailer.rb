class NotificationsMailer < ActionMailer::Base
  default :from => "sales@sweepevents.com"
  default :to => "sales@sweepevents.com"

  def new_message(message)
    @message = message
    mail(:subject => "Website Contact Request",
          :body => "Name: #{@message.name}\nEmail: #{@message.email}\nDescription: #{@message.content}")
  end
end
