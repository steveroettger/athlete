OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '196898987105825', '407b0d73859b8bddb32b8e8e933dec01'
end