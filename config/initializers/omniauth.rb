Rails.application.config.middleware.use OmniAuth::Builder do
  provider :trello, "360be6ac4d71128655a3f654f7bad296", "36e464e6c482afec717177b16d106c7ef2433150af2859778d484aa9a95b27dc",
  app_name: "omrails", scope: 'read,write,account', expiration: 'never'
end