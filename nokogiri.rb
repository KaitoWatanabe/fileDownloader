require 'nokogiri'
require 'open-uri'

url = 'http://cis.k.hosei.ac.jp/~kano/Lecture_MC_2.html'

html = Nokogiri::HTML(open(url))
linkLength = html.css('a').size
puts(linkLength)

for num in 0..(linkLength-1) do
  	link = html.css('a')[num].attribute("href")
  	if link.include?("pdf") then
  		@path = url + link
		puts(@path)

		fileName = File.basename(@path)

		open(fileName, 'wb') do |output|     #※１
	  		open(@path) do |data|
	    output.write(data.read)         #※２
	  		end
		end
  		
  	end
  	
end

