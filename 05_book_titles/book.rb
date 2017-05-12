class Book
  attr_accessor :title
  def title
    stop_words = %w{a an and the or for of nor in}
    @title.split.each_with_index.map{|word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
  end
end
