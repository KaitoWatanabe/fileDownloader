require 'open-uri'
@path = 'http://cis.k.hosei.ac.jp/~kano/Lecture_MC/calc_04_A_lecture.pdf'

fileName = File.basename(@path)

open(fileName, 'wb') do |output|     #※１
  open(@path) do |data|
    output.write(data.read)          #※２
  end
end