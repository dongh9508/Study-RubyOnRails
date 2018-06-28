class Person
    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
    end
    
    def walk
        puts "#{@age}살의 #{@gender}자인 #{@name}이가 걷는중입니다."
    end
end

hyeonmu = Person.new("전현무", 42, "남")
donghun = Person.new("임동훈", 24, "남")

hyeonmu.walk
donghun.walk


