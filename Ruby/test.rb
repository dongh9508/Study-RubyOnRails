list = []
a = gets.chomp
b = a.to_i #정수로 형변환 시켜줌.
for i in 1..b
    print "#{i}번째 숫자를 입력하세요 :"
    number = gets.chomp
    list.push(number)
end

list.each do |i|
    puts "당신이 입력한 숫자는 #{i}입니다."
end

    