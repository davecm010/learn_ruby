def add (x,y)
  return x + y
end

def subtract(x,y)
  return x - y
end

def sum(array)
  output = 0
  array.each do |element|
    output = output + element
  end
  return output
end

def multiply(array)
  output = 1
  array.each do |e|
    output = output * e
  end
  return output
end

def power(var, exp)
  x = 1
  for e in 0..exp-1 do
    x *= var
  end
  return x
end

def factorial(x)
  if x == 1 || x == 0
    return 1
  else
    result = 1
    for i in 1..x do
      result = result * i
    end
    return result
  end
end
