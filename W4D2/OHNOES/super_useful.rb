# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class Coff_err < StandardError 
  def message
    "NOOOOOOOOOOOOOOO"
  end

  class No_FROOT < StandardError
    def message
      "I WILL FEAST ON THE BLOOD OF YOUR CHILDREN, TRAITOR"
    end

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit = "coffee"
    raise Coff_err 
  else 
    raise No_FROOT
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
rescue Coff_err => a
  puts a.message
  retry
rescue No_FROOT => a
  puts a.message
end 
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known.to_i
    @fav_pastime = fav_pastime
    raise ArgumentError.new("no blank") if name.empty?
    raise ArgumentError.new("yrs must be more than 4") if yrs_known.to_i < 5 
    raise ArgumentError.new("no blank") if fav_pastime.empty?


  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


