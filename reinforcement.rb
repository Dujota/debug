
# Create an emotions hash, where the keys are the names of different human emotions and the values are the degree to which the emotion is being felt on a scale from 1 to 3.

emotions = {
  happy: rand(1..3),  # this takes a range and turns it to array in the hash
  sad: rand(1..3),
  angry: rand(1..3)
}

class Person

  attr_accessor :name, :emotions

  def initialize (name, emotions)
    @name = name.to_s
    @emotions = emotions
  end

  def feeling
    @emotions.each { |emotion, value|
    if value == 3
      puts "I am feeling a high amount of #{emotion}."
    elsif value == 2
      puts "I am feeling a medium amount of #{emotion}."
    else
      puts "I am feeling a low amount of #{emotion}"

    end
    }

  end

end

me = Person.new("Dude", emotions)
puts emotions.inspect
puts me.feeling.inspect
