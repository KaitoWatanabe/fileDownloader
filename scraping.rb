require 'net/http'
require 'iconv'

Net::HTTP.start('www.yahoo.co.jp', 80) {|http|
  response = http.get('/index.html')
  puts Iconv::iconv('euc-jp','UTF-8',response.body.to_s)
}
