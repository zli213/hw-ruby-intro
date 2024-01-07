# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |i|
    sum += i
  end
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length == 1

  max1 = arr.max
  arr.delete_at(arr.index(max1)) 
  max2 = arr.max
  max1 + max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  emptyArray = []
  return false if arr.empty? || arr.length == 1
  num1 = 0
  arr.each do |i| 
  index_of_other = arr.index(n-i)
    if arr.index(n-i) != num1 && index_of_other
      emptyArray.push(i)
      emptyArray << index_of_other
    end
    num1 += 1
  end
  if emptyArray.empty?
    return false
  else
    return true
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if !s.is_a?(String) || s.empty?
  !(/\A[aeiou]/i.match(s[0]) || /\A[^a-z]/i.match(s[0]))
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == '0'
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_writer :price
  def initialize(isbn,price)
    raise ArgumentError, 'Isbn cannot be empty' if isbn.to_s.strip.empty?
    raise ArgumentError, 'Price cannot be less than or equal to zero' if price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
     return "$"+format('%.2f', @price)
  end
  def isbn
    return @isbn
  end
  def price
    return @price
  end
end
