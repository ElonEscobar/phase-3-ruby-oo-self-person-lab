# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :get_paid
    def initialize(name)
        @name  = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else @happiness = happiness
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0 
            @hygiene = 0
        else @hygiene = hygiene
        end
    end

    def hygiene
        @hygiene
    end

    def clean?
        hygiene > 7
    end

    def happy?
        happiness > 7
    end

    def get_paid(amount)
        @amount = amount
        @bank_account += @amount
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(some_new_name)
        self.happiness += 3
        some_new_name.happiness += 3
        "Hi #{some_new_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(a_name, a_topic)
        if a_topic == 'politics'
            self.happiness -= 2
            a_name.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif a_topic == 'weather'
            self.happiness += 1
            a_name.happiness += 1
            'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end 
    end
  
end
# binding.pry
