OmniAuth.config.logger = Rails.logger 

Rails.application.config.middleware.use OmniAuth::Builder do  
    provider :google_oauth2, '20641309323-cfporr6jjc9b7fu6r9neo47nd35ha8a5.apps.googleusercontent.com ', 'x1tbCSsUzE9rBNydhGot1P76', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}} 
end
