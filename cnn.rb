require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
url = 'https://edition.cnn.com/'
html = URI.open(url).read

# JSON.parse => turned a JSON into Ruby objects
# Nokogiri => turn HTML into Ruby objects
p html_doc = Nokogiri::HTML(html)

p html_doc.search('.cd__headline-text').first
