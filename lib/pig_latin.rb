require "pig_latin/version"

module PigLatin
  # Your code goes here...
  

  def self.translate(str)
    # check if str input starts with a y
    # if it doesn't 
    vowels = ["a", "e", "i", "o", "u"]
    vowels_including_y = vowels << "y"

    # if string does not begin with y
    if str[0] != "y"
      # use vowels including "y"
      # checks if word begins with vowel
      if vowels_including_y.include?(str[0]) == true
        # if it does, append "way" & implicit return new_word
        new_word = str << "way"
      # checks if begins with consonant
      elsif vowels_including_y.include?(str[0]) == false
        # if so, stores the beginning of the word to just before the first vowel
        first_consanonts = /^[^aeiouy]+/.match(str)[0]
        # then, stores the last half of the word
        last_half_of_word = str.split(/^[^aeiouy]+/)[1]
        # combines into PigLatin and implicitly returns new_word
        new_word = "#{last_half_of_word}#{first_consanonts}ay"
      end
    elsif str[0] == "y"
      #use vowels excluding "y" - logic follows the same as above.
      first_consanonts = /^[^aeiou]+/.match(str)[0]
      last_half_of_word = str.split(/^[^aeiou]+/)[1]
      new_word = "#{last_half_of_word}#{first_consanonts}ay"
    end
  end
end
