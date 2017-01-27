class DeviceRegistrationController < ApplicationController
  before_action :authenticate_user

  def create
    logger.info "received registration request from #{device_info(params)}"

    device_id = params['device_registration']['device_uuid']
    reg = DeviceRegistration.find_or_create_by(device_uuid: device_id)
    reg.user = current_user if reg.new_record?
    reg.notified = false
    reg.received = Time.now
    reg.save

    notify_device(params['device_registration']['token'])

    head :created
  end

  def notify_device(device_token)
    if device_token
      logger.info "sending iOS push nofication to device token #{device_token}"
      event = Event.create(os: device_token['os'], token: device_token['token'])
      PushNotificationJob.set(wait: 10.second).perform_later event
    end
  end

  def device_info(params)
    p = params['device_registration']
    "Device #{p['model']}, #{p['device_id']}, #{p['device_uuid']}"
  end
end
