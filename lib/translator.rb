# require './data/input.txt'

class Translator
attr_reader :text

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end


  def eng_to_morse(text)
    eng = text.downcase.each_char.to_a.compact # ['h','e','l','l','o']
    morse = ""
    eng.each do |char|
      morse += @dictionary[char].to_s
    end
    morse
  end


  def from_file(file)
    print_this = ""
    IO.foreach(file) do |line|
      print_this += eng_to_morse(line) + "\n"
    end
    print_this
  end

  def morse_to_eng(text)
    morse = text.split
    eng = ""
    @dictionary.keys.map do |key|
      morse.find do |char|
        char == key
      end
      eng += key
    end
    eng
  end



end
