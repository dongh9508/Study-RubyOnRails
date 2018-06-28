
def complte(name, skills, sizes, meals)
   puts "신이 #{name}을 만들 때"
   puts "먼저 #{skills[0]}를 #{sizes[0]} 넣고"
   puts "#{skills[1]}도 #{meals[0]} 스푼"
   puts "마지막으로 #{skills[2]} 을 넣으아아아아.."
end

def god_make
    skill = ['외모', '운동능력', '공부머리', '센스', '유머', '손재주', '인성']
    size = ['적게', '조금 적게', '보통', '보통보다 조금 더', '적당하게', '많이']
    meal = ['한', '두', '세', '네', '다섯', '여섯']

    skills = skill.sample(3)
    sizes = size.sample(1)
    meals = meal.sample(1)
    
    print "이름을 입력하세요 : "
    name = gets.chomp
    complte(name, skills, sizes, meals)
end

def lotto
    
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

end

puts "어떤 프로그램을 사용하시겠습니까?"
puts "1. 신이 나를 만들 때"
puts "2. 로또 프로그램"
num = gets.chomp


if num.to_i == 1
    god_make
elsif num.to_i == 2
    lotto
else
    puts "1도 아니고 2도 아닌 수를 입력하셨습니다."
end
