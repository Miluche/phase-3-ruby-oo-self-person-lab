class Person
  attr_reader :name
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness
  end
  def happiness=(value)
    @happiness = if value >= 0 && value <= 10
                 value
               else
                 (value < 0) ? 0 : 10
               end
  end
  def hygiene
    @hygiene
  end
  def hygiene=(value)
    @hygiene = if value >= 0 && value <= 10
                 value
               else
                 (value < 0) ? 0 : 10
               end
  end

  def happy?
    @happiness > 7
  end
  def clean?
    @hygiene > 7
  end
  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4 # increment hygiene by 4 points
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3 # decrements hygiene by 3 points
    self.happiness += 2 # increments happiness by 2 points
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{@name}. How are you?"
  end
  def start_conversation(person, topic)
    case topic
    when "politics"
      convo = "blah blah partisan blah lobbyist"
      self.happiness -= 2
      person.happiness -= 2
    when "weather"
      convo = "blah blah sun blah rain"
      self.happiness += 1
      person.happiness += 1
    else
      convo = "blah blah blah blah blah"
    end
    convo
  end
end