require 'pry'

class Lexiconomitron

  def initialize(letter)
    @letter = letter.downcase
  end

  def shazam(words)
    words = words.map do |word|
      eat_letter(word).reverse
    end

    [words[0], words[-1]]
  end

  def oompa_loompa(words)
    words = words.delete_if {|number| number.length > 3 }

    # words.select! { |word| word.size <= 3 }
    words.map! do |word|
      eat_letter(word) 
    end
  end

  def all_in_line(words, delimiter)
    words.sort_by! { |word| word.size }.reverse!
    line = words.join(delimiter)

    line.downcase.tr(@letter, "")
  end
    # 
  def supercounter(words)
    words = eat_letter(words.join(""))
    

    # words.slice(/.*t/)
    # binding.pry
    (0.upto(words.size-1)).each do |letter_index|
      if before_letter?(words[letter_index])
        sum += 1
      end
    end
    sum
  end
  private
  def eat_letter(word)
    word.downcase.tr(@letter, "")
  end

  def before_letter?(letter)
    if alphabet.index(letter.downcase) < alphabet.index(@letter)
      return true
    end
    false
  end

  def alphabet
    "abcdefghijklmnopqrstuvwxyz"
  end
end

# binding.pry

a = Lexiconomitron.new("l")

a.supercounter(["hola", "adios", "test","tal"])

a.oompa_loompa(["hola", "adios", "test","tal"])