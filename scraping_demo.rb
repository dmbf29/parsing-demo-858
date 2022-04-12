require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
puts "What recipes are you looking for?"
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"
html = URI.open(url).read

# JSON.parse => turned a JSON into Ruby objects
# Nokogiri => turn HTML into Ruby objects
html_doc = Nokogiri::HTML(html)

# get the text from the objects
# p html_doc.text

# search for HTML tags
html_doc.search('h4')
# search for HTML class (.class_name)
html_doc.search('.standard-card-new__display-title')
# search for HTML id (#id_name)
html_doc.search('#banner')
# search => an array of Nokogiri objects

# nested search
html_doc.search('.standard-card-new__display-title a').each do |title_element|
  puts title_element.text.strip
  puts title_element.attribute('href').value
end
