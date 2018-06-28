
answer = (1..45).to_a.sample(6).map(&:to_s)

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



