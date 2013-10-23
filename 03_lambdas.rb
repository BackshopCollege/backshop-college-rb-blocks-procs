=begin
  Behavious similar to Procs
  Strict Arguments
=end

l = lambda { |x| x * 10 }
puts l.call 1

def lambda_return
  f = lambda { return "Backshop returned from Proc" }
  f.call
  return "Backshop YEAH !" 
end

puts lambda_return

def lambda_next
  f = lambda { next "Backshop REturned from NExt" }
  val = f.call
  puts "Returned from Lambda next => #{val}"
  return "Backshop YEAH !" 
end

puts lambda_next