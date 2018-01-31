require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require './lib/translate'

class TranslatorTest < Minitest::Test
  def test_it_exist
    translator = Translate.new
    assert_instance_of Translate, translator
  end

  def test_translating_one_lowercase_character_english_to_morse
    translator = Translate.new
    assert_equal ".-", translator.eng_to_morse("a")
  end

  def test_multiple_lowercase_characters
    translate = Translator.new("tu")
    assert_equal "-..-", translate.eng_to_morse
  end
  #
  # def test_multiple_characters_with_spacing_and_upercase
  #   translate = Translator.new("Hello World")
  #   expected = "......-...-..--- .-----.-..-..-.."
  #   assert_equal expected, translate.eng_to_morse
  # end

  # def test_multiple_words_upercases_and_numbers
  #   translator = Translate.new
  #   expected = "-......-.. .-.-.. ...-- ..........--...."
  #   assert_equal expected, translator.eng_to_morse("There are 3 ships")
  # end
end
