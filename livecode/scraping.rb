require "open-uri"
require "nokogiri"
require "csv"

url = "http://www.imdb.com/chart/top"

data = open(url).read

data_parsed = Nokogiri::HTML(data)

data_searched = data_parsed.search(".titleColumn a")

# .text selects only the text of the <a> tag (the title of each film)
array = data_searched.map { |element| element.text }

# method to open the CSV file : CSV.open(file_name, special parameter)
CSV.open("movies.csv", "wb") do |csv|
  csv << array.take(10) # Storing the titles of the top ten films on imdb in a csv file
end

# array_10.each { |movie| CSV << movie }
