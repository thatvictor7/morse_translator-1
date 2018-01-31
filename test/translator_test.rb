require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test
  def test_it_exist
    translate = Translator.new("Hello World")
    assert_instance_of Translator, translate
  end

  def test_translating_one_character_english_to_morse
    translate = Translator.new("as")
    assert_equal ".-", translate.convert
  end


end
