Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '387319524698240', '5aa45dc530b0dd6c9946341986107399',
           :scope => 'email,user_birthday,read_stream', :display => 'popup'



  provider :twitter, 'Et2ggoorIzUU1ZoqsL3w', '0sFz3JTKxoKwjErDADGL0LExDrBlwo3iWmhi4NM4bPE'
end
#provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']