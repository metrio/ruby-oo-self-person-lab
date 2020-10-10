# your code goes here

class Person
   attr_reader :name, :happiness, :hygiene
   attr_accessor :bank_account 

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        if happiness.between?(0,10)
            @happiness = happiness
        elsif happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0

        end
    end

    def hygiene=(hygiene)
        if hygiene.between?(0,10)
            @hygiene = hygiene
        elsif hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
           
        end
    end

    def clean?
       if @hygiene > 7
        return true
       else
        return false
       end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene += 4)
        
        return "♪ Rub-a-dub just relaxing in the tub ♫"
        
    end

    def work_out
        self.hygiene=(@hygiene -= 3)
        self.happiness=(@happiness += 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(people)
        self.happiness += 3
        people.happiness += 3
        return "Hi #{people.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
                return "blah blah partisan blah lobbyist"
            elsif topic == "weather"
                    self.happiness +=1
                    person.happiness +=1
                return "blah blah sun blah rain"
            else topic == "other"
                return "blah blah blah blah blah"
        end
    end
end
