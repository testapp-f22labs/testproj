OmniAuth.config.logger = Rails.logger
OmniAuth.config.on_failure = SessionsController.action(:oauth_failure)
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '879067538873092', '6d1b6885ff5c7d85840729498f32fe08', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end