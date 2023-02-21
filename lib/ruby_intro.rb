# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  total = arr.sum #takes the sum of the array values
  return total
end

def max_2_sum arr
  total = 0
  total = arr.sort.max(2).sum #takes the sum of the largest 2 array values
  return total
end

def sum_to_n? arr, n
  if arr.length == 1 #checks if the array only has 1 variable
    return false
  end
if arr.find{|a| arr.include?(n-a)} #checks if there is a value that can be added with a to equal n
  return true
end
return false
end

# Part 2

def hello(name)
  return "Hello, " + name.to_s #returns hello and the name as a string
end

def starts_with_consonant? s
  if s.to_s.match(/\A[^aeiouAEIOU\W]/) #checks if the first character is a consonant
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn, price) #constructor
    if isbn == '' #checks if string empty
      raise ArgumentError.new("Invalid")
    end
    price = price.to_f
    if price <= 0 #checks if price 0 or negative
      raise ArgumentError.new("Invalid")
    end
    @isbn = isbn
    @price = price
  end
    def isbn=(isbn) #isbn setter
      @isbn = isbn
    end
    def isbn #isbn getter
      @isbn
    end
    def price=(price) #price setter
      @price = price
    end
    def price #price getter
      @price
    end
    def price_as_string
      return "$%0.2f" % [price] #formats the price
    end
end
