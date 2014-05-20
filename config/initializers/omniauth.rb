OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  require "omniauth-facebook"
  require "omniauth-google"
  
  provider :facebook, "281710915339740", "155909d503977267078fa2e36c206139"
  provider :google, "APP_ID", "APP_SECRET"

end