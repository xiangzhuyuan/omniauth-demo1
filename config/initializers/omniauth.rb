Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['F_KEY'], ENV['F_S'],
           :scope => 'email,user_birthday,read_stream', :display => 'popup'
  provider :twitter, ENV['T_KEY'], ENV['T_S']
end