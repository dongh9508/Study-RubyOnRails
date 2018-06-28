require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://music.naver.com/listen/top100.nhn?domain=TOTAL&duration=1h'))

ul = doc.css('td.name')
li = ul.css('span.ellipsis')

#네이버 음악순위 1위부터 50위까지 출력해보기.
li.each do |span|
    puts span.content
end