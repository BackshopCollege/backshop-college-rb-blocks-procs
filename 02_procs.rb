=begin
  You can assign a Proc to a variable
  Relaxed Arguments
  Contructor: Proc.new {} || proc {}
=end

#relaxed with default values
x = proc { |first=10, second=10| first * second }
puts "default values relaxed #{x.call}"

#relaxed without default values
x = proc { |first, second| (first || 10 )* (second || 23) }
puts "without default values #{x.call}"

def proc_return
  f = Proc.new { return "Backshop returned from Proc" }
  f.call
  return "Backshop YEAH !" 
end

puts proc_return

def proc_next
  f = Proc.new { next "Backshop REturned from NExt" }
  val = f.call
  puts "Returned from Proc => #{val}"
  return "Backshop YEAH !" 
end

puts proc_next

# Break nao sei como funciona com PROC  => break from proc-closure
