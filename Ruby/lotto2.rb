require 'nokogiri'
require 'open-uri'

list = []

url="http://www.nlotto.co.kr/gameResult.do?method=byWin"
doc = Nokogiri::HTML(open(url))
title = doc.css("p.number>img")

title.each do |i|
    ans = i['alt']
    list.push(ans)
end

answer = list

puts "숫자 6개를 입력하세요. 띄어쓰기로 구분하세요."
n = gets.chomp
array = n.split(" ")

puts "당신이 선택한 숫자는 #{array}"
puts "당첨 번호는 #{answer}"
count = 0

array.each do |n|
  answer.each do |a|
    if a == n
      count += 1
    end
  end
end

puts "맞은 갯수는 #{count}"