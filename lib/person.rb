 require 'pry'



class Person
   attr_reader :name, :happiness, :hygiene, :bank_account
   attr_writer :bank_account


  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  def happiness=(index)
    if index > 10
       @happiness = 10
     elsif index < 0
       @happiness = 0
     else
       @happiness = index
    end
  end

  def hygiene=(index)
    if index > 10
       @hygiene = 10
     elsif index < 0
       @hygiene = 0
     else
       @hygiene = index
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    new_hygiene = @hygiene + 4
    self.hygiene=(new_hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    happy = @happiness + 2
    self.happiness=(happy)
    new_hygiene = @hygiene - 3
    self.hygiene=(new_hygiene)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    if friend.class == Person
      person_making_call = @happiness + 3
      self.happiness=(person_making_call)
      friends_happy = friend.happiness + 3
      friend.happiness=(friends_happy)
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  end

  def start_conversation(person, topic)
    if topic == "politics"
      selfs_happy = @happiness - 2
      self.happiness=(selfs_happy)
      person_happy = person.happiness - 2
      person.happiness=(person_happy)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      selfs_happy = @happiness + 1
      self.happiness=(selfs_happy)
      person_happy = person.happiness + 1
      person.happiness=(person_happy)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end

sam = Person.new("Sam")
