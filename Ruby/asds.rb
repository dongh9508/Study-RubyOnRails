
skill = ['외모', '운동능력', '공부머리', '센스', '유머', '손재주', '인성']
size = ['적게', '조금 적게', '보통', '보통보다 조금 더', '적당하게', '많이']
meal = ['한', '두', '세', '네', '다섯', '여섯']

skills = skill.sample(3)

sizes = size.sample(1)
meals = meal.sample(1)

print "이름을 입력하세요 : "
name = gets.chomp

def complte(name, skills, sizes, meals)
   puts "신이 #{name}을 만들 때"
   puts #그냥 한 줄 띄우기 위해서 아무것도 안 넣은 puts를 넣으면 된다.
   puts "먼저 #{skills[0]}를 #{sizes[0]} 넣고"
   puts "#{skills[1]}도 #{meals[0]} 스푼"
   puts "마지막으로 #{skills[2]} 을 넣으아아아아.."
end

complte(name, skills, sizes, meals)

