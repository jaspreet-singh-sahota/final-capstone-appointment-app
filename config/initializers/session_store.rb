if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_authentication_app', domain: 'jassi-cultfit-app.herokuapp.com/'
else
  Rails.application.config.session_store :cookie_store, key: '_authentication_app'
end