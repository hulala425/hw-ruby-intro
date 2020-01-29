# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else
    return  arr.inject(0, :+)
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    return arr.max(2).sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  elsif arr.combination(2).find{|x,y| x+y==n}
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ('Hello, ' + name)  
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
  	return false
  elsif ( /[a-z]/ =~ s[0].downcase && /[^aeiou]/ =~ s[0].downcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if  s=~/^[01]0*1*/ then  
    s="0b"+s             #to binary            
    s=Integer(s)         #to integer            
    if s%4==0 then return true end
  end

  return false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? || price<=0 
    @isbn, @price = isbn, price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
    
end