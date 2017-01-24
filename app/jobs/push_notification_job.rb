class PushNotificationJob < ApplicationJob
  queue_as :default

  rescue_from(ActiveRecord::RecordNotFound) do |_exception|
    logger.error 'cannot find record in PushNotificationJob'
  end

  def apn
    unless @apn
      @apn = Houston::Client.development
      @apn.certificate = File.read(ENV['APS_CERT_PATH'])
    end
    @apn
  end

  def perform(event)
    notification = Houston::Notification.new(device: event.token)
    notification.alert = 'Welcome to the bank!'
    notification.custom_data = { message: 'welcome' }
    begin
      apn.push notificaiton
      event.sent = true
      event.save
    rescue Exception => e  
      puts e.message  
      logger.error "Failed to send notification to #{event.token}"
    end
  end
end
