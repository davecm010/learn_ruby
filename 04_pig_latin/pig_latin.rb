def translate(string)
  output = []
  sentence = string.split
  sentence.each do |word|
    output.push(wordTranslate(word))
  end
  output.join(' ')
end

def wordTranslate(string)
  vowels = ['a', 'e', 'i', 'o', 'u']
  for i in 0..string.length
    if vowels.include? string[i]
      if i == 0
        return string + 'ay'
      else
        return string[i..-1] + string[0..i-1] + 'ay'
      end
    elsif string[i] == 'q'
      return string[i+2..-1] + string[0..i+1] + 'ay'
    end
  end
end
