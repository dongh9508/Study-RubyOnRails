require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://www.naver.com'))

ul = doc.css('ul.ah_l')
li = ul.css('li>a>span.ah_k')

li.each do |span|
    puts span.content
end
