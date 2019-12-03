def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  love_food = []
  src_count = 0
  
  while src_count < src.length do
    love_food.push("I love " + src[src_count][0] + " and " + src[src_count][1] + " on my pizza")
    src_count += 1
  end
  
  love_food
  
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  largest = []
  
  src.length.times do |counter|
    if src[counter][0] > src[counter][1]
      largest.push(src[counter][0])
    else largest.push(src[counter][1])
    end
  end
  largest
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
    even = []
    total = []
  src.length.times do |counter|
    if (src[counter][0] %2 == 0)
      
      src[counter][1] %2 == 0
      even.push(src[counter][0] + src[counter][1] )
    end
  end
  total
end
