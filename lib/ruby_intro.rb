# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.reduce(:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort.last(2)
  return arr.reduce(:+)
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  return true if arr.empty? and n == 0
  arr.combination(2).each do |combi|
    return true if combi.inject(:+) == n
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  if s.downcase.index(/[qwrtpsdfghjklzxcvbnm]/) == 0
    true
  else
    false
  end
   #return s[0].downcase.start_with?(/[qwrtpsdfghjklzxcvbnm]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s.length > 0 && s.match(/^[0|1]*$/) ?  s.to_i(2)%4 ==0 : false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError
    end
    @isbn =isbn
    @price = price
  end
  
  def price_as_string
    return   "$#{'%.2f' % @price}"
  end
end
