=begin
  if object is a block, it converts the block into a simple proc.
  if object is a Proc, it converts the object into a block while preserving the lambda? status of the object.
  if object is not a Proc, it first calls #to_proc on the object and then converts it into a block.
=end

def sample(number)
  print "\n\n"
  print "-" * 20
  print "sample #{number}"
  print "-" * 20
  print "\n\n"
end
#  if object is a block, it converts the block into a simple proc.
sample(1)

def capturing_block(&block)
  block.call
end

capturing_block do 
  puts "Block Captured"
end

# if object is a Proc, it converts the object into a block while preserving the lambda? status of the object.
sample(2)
x_10 = lambda{ |x| x * 10 }
puts [1,2,3].map &x_10

def preserve(&block)
  puts  "Am I lambda Proc? #{block.lambda?}"
  result = block.call(20)
  puts result
end
preserve &x_10

# if object is not a Proc, it first calls #to_proc on the object and then converts it into a block.
sample(3)
class Multiply
  def initialize(factor)
    @factor = factor
  end

  def to_proc
    proc { |x|  @factor * x }
  end
end

by_99 = Multiply.new(99)
puts [1,2,3].map(&by_99)




