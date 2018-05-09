# YOUR TESTS GO IN HERE!

require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test

  def test_it_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_eng_to_morse
    translator = Translator.new
    hello = translator.eng_to_morse("hello world")
    assert_equal "......-...-..--- .-----.-..-..-..", hello
  end

  def test_eng_to_morse_case_insensitive
    translator = Translator.new
    hello = translator.eng_to_morse("Hello World")
    assert_equal "......-...-..--- .-----.-..-..-..", hello
    ships = translator.eng_to_morse("There are 3 ships")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", ships
  end

  def test_from_file
    translator = Translator.new
    file_text = translator.from_file("./data/input.txt")
    assert_equal ".. .--- ..-. .- ..-....-...", file_text
  end


end

# assert_equal
# assert
# refute
# refute_equal
# assert_nil
# assert_instance_of
