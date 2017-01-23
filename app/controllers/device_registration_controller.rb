class DeviceRegistrationController < ApplicationController
  before_action :authenticate_user
  
  def create
    byebug
    logger.info "received registration request from #{device_info(params)}"

    device_id = params['device_uuid']
    reg = DeviceRegistration.find_or_create_by(device_uuid: device_id)
    reg.user = current_user if reg.new_record?
    reg.notified = false
    reg.received = Time.now
    reg.save

    # TODO: pass reg to Push notification job

    head :created
  end

  def device_info(params)
    "Device #{params['model']}, #{params['device_id']}, #{params['device_uuid']}"
  end
end
