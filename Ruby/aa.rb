answer = (1..45).to_a.sample(6).map(&:to_s)

puts "숫자 6개를 입력하세요. 띄어쓰기로 구분하세요."
num = gets.chomp
num_array=num.split(" ")

puts "당신이 선택한 숫자는 #{num_array}"
puts "당첨 번호는 #{answer}"
count = 0
num_array.each do |i|
    answer.each do |j| 
        if i == j
            count += 1
        end
    end
end
puts "맞은 갯수는 #{count}"

