OmniAuth.config.logger = Rails.logger 

Rails.application.config.middleware.use OmniAuth::Builder do  
    provider :google_oauth2, '20641309323-832qrgtrkncnkaoojju90jk7ghbkdfh5.apps.googleusercontent.com', 'aHNUzIig9TxGT9Mio4c0Gzkf', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}} 
end
