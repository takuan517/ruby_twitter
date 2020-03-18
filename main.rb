require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

stream_client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

#client.update("rubyでtwitter apiいじってみた")
client.home_timeline.each do |tweet|
    puts tweet.user.screen_name + ':' + tweet.text
end
