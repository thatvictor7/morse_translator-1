require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test
  def test_it_exist
    translate = Translator.new("Hello World")
    assert_instance_of Translator, translate
  end

  def test_translating_one_lowercase_character_english_to_morse
    translate = Translator.new("a")
    assert_equal ".-", translate.eng_to_morse
  end

  def test_multiple_lowercase_characters
    translate = Translator.new("tu")
    assert_equal "-..-", translate.eng_to_morse
  end

  def test_multiple_characters_with_spacing
    translate = Translator.new("hello world")
    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, translate.eng_to_morse
    # binding.pry
  end
end
