def sum arr
  sum = 0
  arr.each do |number|
    sum += number
  end
  return sum
end

def max_2_sum arr
  return sum(arr.max(2))
end

def sum_to_n? arr, n
 sum_n = false
 arr.each_with_index do |number,index|
   arr.each_with_index do |num,ind|
     if(index != ind && number + num == n)
       sum_n = true
       break
     end
   end
 end
 
 return sum_n
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s =~ /^[^bcdfghjklmnpqrstvwxyz]|^$/i? false : true
end

def binary_multiple_of_4? s
  bin = 0
  condition = false

  if s =~ /^[01]/ 
    bin = s.to_i(2)
    if bin%4 == 0  
      condition=true
    end
  end
  
  return condition
end

# Part 3

class BookInStock
    
    attr_accessor :isbn, :price
    
    def initialize(isbn, price)
        @isbn = isbn
        @price = price
        
        if(isbn == '')
          raise ArgumentError.new("ISNB is invalid.")
        elsif(price <= 0)
          raise ArgumentError.new("The price should be a positive number.")
        end
    end
    
    def price_as_string
      return "$%.2f" % @price
    end

end