require 'simple-slack-bot'

bot = SlackBot::Client.new

bot.configure do |config|
  config.join_message = 'Hello!'
  config.debug = true
  config.token = 'YOUR SLACK BOT TOKEN'
end

bot.add_command(/Hello/) do |data|
  bot.message(data['channel'], "Hello. <@#{data['user']}>!")
end

bot.start!
