class Person
    @@people_count = 0
    
    def initialize(name)
        @name = name
        @@people_count += 1
    end
    
    def run
        puts "#{@name}가(이) 달립니다"
    end
    
    def drink
        puts "#{@name}가(이) 물을 마십니다."
    end
    
    def self.number_of_instances
        puts "#{@@people_count} 명이 현재까지 생성되었습니다."
    end
end

dong = Person.new("동훈")
dong.run
dong.drink
Person.number_of_instances

hun = Person.new("동훈")
hun.run
hun.drink
Person.number_of_instances
