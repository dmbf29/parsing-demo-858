require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
puts "What's your Github username?"
username = gets.chomp
url = "https://api.github.com/users/#{username}"
response = URI.open(url).read
# p response['login']
user = JSON.parse(response)
# p user['login']
# p user

puts "#{user['name']} works at #{user['company']} in #{user['location']}"
