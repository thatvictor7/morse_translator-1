require_relative 'translator'
require 'pry'
class Translate
  def initialize
    @input = []
    @library = Translator.new
  end
  # def eng_to_morse
  #   convert.join
  # end
  #
  # def split_text
  #   @input.downcase.split("")
  # end
  #
  # def convert
  #
  #   split_text.map do |character|
  #     @dictionary[character]
  #   end
  # end
  def eng_to_morse(input)
    @input << input.downcase.split("").join
    convert.join
  end

  def convert

    @input.map do |character|
        @library.dictionary[character]
      end
    end
end
