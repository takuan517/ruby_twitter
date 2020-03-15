require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "0eUojPhrkP9xQtJac7c3CTp1E"
  config.consumer_secret     = "7GCAWQZ2kJ1FcOKZql1v1Qgs9LhI17Ksgbf7X0QY2ShVmYE0KR"
  config.access_token        = "708208212026085377-qEonm7He7N4QuBYXGpbznkvPajpUyyj"
  config.access_token_secret = "sZsiZWFvtmC6R6YuVecV2kuODvb7Co8Dk9Ww8wAi2CV1n"
end

stream_client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "0eUojPhrkP9xQtJac7c3CTp1E"
  config.consumer_secret     = "7GCAWQZ2kJ1FcOKZql1v1Qgs9LhI17Ksgbf7X0QY2ShVmYE0KR"
  config.access_token        = "708208212026085377-qEonm7He7N4QuBYXGpbznkvPajpUyyj"
  config.access_token_secret = "sZsiZWFvtmC6R6YuVecV2kuODvb7Co8Dk9Ww8wAi2CV1n"
end

client.update("rubyでtwitter apiいじってみた")