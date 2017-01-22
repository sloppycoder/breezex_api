Knock.setup do |config|
  # config.token_lifetime = 1.day
  # config.token_audience = nil
  # config.token_public_key = nil
  # config.not_found_exception_class_name = 'ActiveRecord::RecordNotFound'
  # config.token_signature_algorithm = 'HS256'
  # config.token_secret_signature_key = -> { Rails.application.secrets.secret_key_base }
  config.token_audience = -> { Rails.application.secrets.auth0_client_id }
  config.token_secret_signature_key = -> { JWT.base64url_decode Rails.application.secrets.auth0_client_secret }
end
