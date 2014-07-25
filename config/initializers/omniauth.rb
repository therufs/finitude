Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :feedly, ENV['FEEDLY_KEY'], ENV['FEEDLY_SECRET']
end
