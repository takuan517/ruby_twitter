require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "Qd0EoEeVw2D8IwaJnBYYqD108"
  config.consumer_secret     = "JmlgWeOxKTkDfenSZZVchpwCUlUl70Q85wet8MD7Hxz9saHpoj"
  config.access_token        = "708208212026085377-3DjVkp6anYkO7euR3zCCYGSpiXzVbSH"
  config.access_token_secret = "hecArHOTLKSXbr9orc4riMFJ7VZddLO2z1Nt2sOKV6Kp1"
end

stream_client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "Qd0EoEeVw2D8IwaJnBYYqD108"
  config.consumer_secret     = "JmlgWeOxKTkDfenSZZVchpwCUlUl70Q85wet8MD7Hxz9saHpoj"
  config.access_token        = "708208212026085377-3DjVkp6anYkO7euR3zCCYGSpiXzVbSH"
  config.access_token_secret = "hecArHOTLKSXbr9orc4riMFJ7VZddLO2z1Nt2sOKV6Kp1"
end

client.home_timeline.each do |tweet|
    puts tweet.user.screen_name + ':' + tweet.text
end