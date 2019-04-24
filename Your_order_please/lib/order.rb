class Order

  NUMBERS = ['1', '2', '3', '4', '5', '6', '7', '8', '9']

  def order(words)
    @sorted_array = []
    iterate(words.split)
    @sorted_array.join(' ')
  end

  private

  def iterate(array)
    array.each do |word|
      word.each_char do |char|
        sort_words(word, char)
      end
    end
  end

  def sort_words(word, char)
    @sorted_array[char.to_i - 1] = word if NUMBERS.include? char
  end

end
