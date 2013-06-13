require 'wordlist'

class Hundred
  def initialize file_path
    return nil unless File.exists? file_path
    @wlist    = list = Wordlist::FlatFile.new(file_path)
    @letters  = ("a".."z").to_a
  end
  def get_words
    hundreds = []
    @wlist.each do |word|
      word.downcase!
      count = 0
      word.split('').each do |char|
        next unless @letters.include?( char )
        count += 1 + (@letters.index char)
      end
      hundreds << word if count == 100
    end
    hundreds
  end
end
