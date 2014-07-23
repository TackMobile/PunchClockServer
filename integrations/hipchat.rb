require 'pry'
require 'hipchat'

# Load the environment vars
require 'dotenv'
Dotenv.load

# Calling it HC so it doesn't interfere w/ the gem
class HC
  def initialize
    @client = HipChat::Client.new(ENV['HIPCHAT_TOKEN'])
  end

  def send(room='PunchClock')
    @client[room].send('PunchClock', 'Derp. I have arrived in the office.', color: 'purple')
  end
end