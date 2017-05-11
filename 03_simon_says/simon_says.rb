def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, val = 2)
  output = ''
  for i in 1..val
    if i == val
      output = output + phrase
    else
      output = output + phrase + ' '
    end
  end
  output
end

def start_of_word(word, x)
  word[0..x-1]
end

def first_word(sentence)
  for i in 0..sentence.length
    if sentence[i] == ' '
      return sentence[0..i-1]
    end
  end
  return sentence
end

def titleize(string)
  little_words = ['in', 'the', 'over', 'and']
  checked = []
  split_list = string.split
  for e in 0..split_list.length-1
    if e == 0
      checked.push(split_list[e].capitalize)
    elsif little_words.include? split_list[e]
      checked.push(split_list[e])
    else
      checked.push(split_list[e].capitalize)
    end
  end
  checked.join(' ')
end
