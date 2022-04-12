require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

json = File.read(filepath)

beatles = JSON.parse(json)
# p beatles['title']

# JSON.parse this will turn a JSON string into a Ruby object
beatles['beatles'].each do |beatle|
  "#{beatle["first_name"]} #{beatle["last_name"]} plays the #{beatle["instrument"]}"
end

p students = [
  {
    name: 'bora',
    age: 24
  },
  {
    name: 'kenji',
    age: 85
  },
  {
    name: 'azat',
    age: 12
  }
]

p JSON.generate(students)

File.open('data/students.json', "wb") do |file|
  file.write(JSON.generate(students))
end
