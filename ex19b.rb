class Form
  attr_reader :doggo_type

  def initialize
    @doggo_type = "doggo_type"
  end

# writing my own function

  def bork(doggo_type)
    if doggo_type == "ween"
       bork_type = "woof"
    elsif doggo_type == "german boy"
       bork_type = "BORK"
    elsif doggo_type == "taco pup"
       bork_type = "yip"
    elsif doggo_type == "corgo"
       bork_type = "yap"
    elsif doggo_type == "husko"
       bork_type = "boof"
    elsif doggo_type == "combo doge"
        bork_type = "bow wow"
    elsif doggo_type == "wolf doggo"
         bork_type = "howwwlllll"
    elsif doggo_type == "cato"
          bork_type = "cat's don't bork you fucking idiot"
    elsif doggo_type == ""
      bork_type = "nothing, you didn't bork"
    else
      bork_type == "i don't know that bork"
    end
    response = "Your bork sounds like this: #{bork_type} \n"
    puts response
  end

    puts "What kind of doggo are you?"
    doggo_type = gets.chomp.downcase

    puts "Initializing bork..."
    bork(doggo_type)

end