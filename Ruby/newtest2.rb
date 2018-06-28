require 'nokogiri'
require 'open-uri'

def check_six_length(num_array)
  if num_array.length != 6 # 1. 숫자를 6개로만 입력가능
    puts "6개의 숫자만 입력 가능 합니다!!"
    puts "당신은 #{num_array.length} 개의 숫자를 입력하셨습니다."
    return false
  end
  true # 리턴문이 없으면 제일 마지막 문장에서 자동으로 리턴된다.
end

def check_overlap(num_array)
  num_hash = num_array.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  overlap_list = num.hash.select{|key, value| value > 1 } 
  if overlap_list.length != 0
    puts "#{overlap_list.keys} 값이 중복됨!"
    puts "중복된 값이 있습니다."
    return false
  end
  true
end

def check_allow_num(num_array)
  if (1..45).to_a.map(&:to_s).include?(num) == false
    puts "#{num}값이 잘못되었습니다."
    puts "입력한 값이 1 ~ 45 까지의 숫자가 아닙니다!!"
    return false
  end
  true
end

doc = Nokogiri::HTML(open('https://search.naver.com/search.naver?where=nexearch&sm=top_sug.aslt&fbm=1&acr=1&acq=%EB%A1%9C%EB%98%90&qdt=0&ie=utf8&acir=1&os=&bid=&pkid=&eid=&mra=&query=%EB%A1%9C%EB%98%90', 'User-Agent' => 'ruby'))
li = doc.css('div.section>div.cs_lotto>div.lotto_wrap>div.num_box>span.num')

answer = []

li.each do |x|
    answer.push(x.content)
end

puts "숫자 6개를 입력하세요. 띄어쓰기로 구분하세요."
nums = gets.chomp
num_array = nums.split(" ")

if !check_six_length(num_array) # unless는 결과에 따라 true 와 false를 출력
  return
elsif check_overlap(num_array)  
  return
elsif check_allow_num(num_array)
  return
end


puts "당신이 선택한 숫자는 #{num_array}"
count = 0
compare_list = []


error = true # 조건 검사용 변수

num_array.each do |num|
  if check_allow_num(num)  # 2. 1~45까지의 배열을 스트링으로.
    compare_list.push(num)
    if answer.include?(num)
        count += 1
    end
  else # 원하는 1~45 사이의 입력값이 아닐경우
    error = false
    break
  end
end

if error == false
  return
end

puts "당첨 번호는 #{answer}"
puts "맞은 개수는 #{count}"

