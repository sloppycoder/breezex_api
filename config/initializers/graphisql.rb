require 'jwt'

if Rails.env.development?
  # create a JWT token so that it can pass the authorization check for graphql endpoint.
  token = {
      'iss': 'https://vino9.auth0.com/', 
      'sub': 'auth0|1234', 
      'aud': 'OinUIDXZfHqHWvaTEHwGwdsxIIQQShii', 
      'exp': Time.mktime('2099').to_i, 
      'iat': Time.mktime('2017').to_i
  }
  secret = JWT.base64url_decode(Rails.application.secrets.auth0_client_secret)

  GraphiQL::Rails.config.headers['Authorization'] = -> (context) { "bearer #{JWT.encode(token, secret, 'HS256')}" }
end