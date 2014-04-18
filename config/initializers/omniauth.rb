Rails.application.config.middleware.use OmniAuth::Builder do
  provider :trello, ENV['TRELLO_KEY'], ENV['TRELLO_SECRET'],
  app_name: "omrails", scope: 'read,write,account', expiration: 'never'
end