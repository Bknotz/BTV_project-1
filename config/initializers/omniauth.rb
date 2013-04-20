Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, '523323887714432', '95694a15a19d8839819823430db27809' #Facebook app ID and secret
  provider :identity, :on_failed_registration => ->(env) do
    env['rack.session'][:identity] = env['omniauth.identity']
    resp = Rack::Response.new("", 302)
    resp.redirect('/register')
    resp.finish
  end
end
