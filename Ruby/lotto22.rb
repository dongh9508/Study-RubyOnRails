require 'nokogiri'
require 'open-uri'

list = []

doc = Nokogiri::HTML(open('https://search.naver.com/search.naver?ie=UTF-8&query=%EB%A1%9C%EB%98%90&sm=chr_hty', 'User-Agent' => 'firefox'))

#num = doc.css('.num_box>.num')
#num = doc.css('div.num_box>span.num')
#num = doc.css('.num_box')

#puts num

num_box = doc.css('div.num_box')
num = num_box.css('.num')

answer = []
num.each do |span|
  answer.push(span.content)
end

puts "숫자 6개를 입력하세요. 띄어쓰기로 구분하세요."
n = gets.chomp
array = n.split(" ")
if array.length != 6 
  puts "6개의 숫자만 입력이 가능합니다."
  return #프로그램을 바로 끝내기 위해 return만 넣어준다.
end


puts "당신이 선택한 숫자는 #{array}"
puts "당첨 번호는 #{answer}"
count = 0
is_Include = true

array.each do |n|
  if (1..45).to_a.map(&:to_s).include?(n)
    answer.each do |a|
      if a == n
        count += 1
      end
    end
  else
    puts ("1~45의 값이 없습니다!!!")
    is_Include = false
    break
  end
end

if is_Include == false
  return
end
puts "맞은 갯수는 #{count}"


