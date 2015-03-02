OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '175877627806-i4avpru6p53ec3escu34plq414q4s5c5.apps.googleusercontent.com', 'OKDN26DOwmLrz33QFe0hWv9f', 
  {
    :scope => 'email,profile,plus.me',
    :prompt => "select_account",
    client_options: {
      ssl: {
        ca_file: Rails.root.join("cacert.pem").to_s
      }
    }
  }
end