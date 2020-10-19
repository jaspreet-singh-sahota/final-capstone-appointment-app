Rails.application.config.middleware.insert_before 0, Rack::Cors, debug: true, logger: (-> { Rails.logger }) do
  allow do
    origins ['https://jassi-cultfit-app.herokuapp.com/',
      'https://jassi-cultfit-app.herokuapp.com/appointments',
      'https://jassi-cultfit-app.herokuapp.com/login',
      'https://jassi-cultfit-app.herokuapp.com/sign-in',  ]

    resource '*',
      :headers => :any,
      :methods => [:get, :post, :delete, :put, :patch, :options, :head],
      :max_age => 0

  end
end
