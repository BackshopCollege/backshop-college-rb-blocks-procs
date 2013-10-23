=begin 
  There is only one way to create a block
  There is only one and only one implicit block argument per method
  You can access the implicit block with yield
  You can not assign a block to a variable
=end

# next 
[1,2,3].each do |number|
  next if number == 2
  puts number
end

# break 
a = [1,2,3].each do |number|             # Iterate over the lines in file f
  break number if number == 2  # If this break statement is executed...
  puts number
end

puts "Backshop #{a}"              # ...then control is transferred here

#return 
def find(array, target)
  array.each_with_index do |element,index|
    return index if (element == target)
  end
  nil
end

puts find [1,2,3,4,5], 3