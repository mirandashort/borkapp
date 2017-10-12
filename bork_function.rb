class Form
  attr_reader :doggo_type
  attr_reader :bork_type
  attr_reader :response

  def initialize
    @doggo_type = "doggo_type"
    @bork_type = "bork_type"
    @response = "response"
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
        bork_type = "cat's don't bark you fucking idiot"
    elsif doggo_type == ""
        bork_type = "sry wut? i didn't hear your bork"
    else
        bork_type = "sry i don't know that bork"
    end

    if bork_type == "sry i didn't hear your bork" || bork_type == "sry i don't know that bork"
        response = "#{bork_type} \n"
    else
      response = "Your bork sounds like this: #{bork_type} \n"
    end
    response = "Your bork sounds like this: #{bork_type} \n"
  end

end
