p = fn a -> IO.puts(a) end

p.("Hello world from Elixir")

p.("hello\nworld")

# addition
p.(1 + 2 + 3)

# division that produces a float
p.(10 / 2)

# division that produces integer
p.(div(4, 2))

# binary number
p.(0b1010)

# float number, the e makes it scientific notation
p.(1.0e-10)

# atoms
p.(:dog)

# string interpolation with a line break
p.("this is a \n #{:dog}")

# check values

# this is a charlist
p.(is_binary('dog'))
# this is a string
p.(byte_size("hello"))

p.(String.length("hundre"))

add = fn a, b -> a + b end

p.(add.(2, 3))

# parenthesis are required to evaluate the function
# the . is required to invoke an anonymous function
p.(add.(5, 5))

# anon functions also have a clear amount of arguments
# should be true
p.(is_function(add, 2))
# should be false
p.(is_function(add, 1))

# an anon func with a closure
double = fn a -> add.(a, a) end

p.(double.(33))

# causing the function to invoke
p.((fn -> x = 0 end).())

# Linked lists
firstList = [1, 2, true, "dog"]

p.(length(firstList))

p.(hd(firstList))

p.(hd(tl(firstList)))

# tuples

myTup = {1, 2, :ok, "hello"}

p.(elem(myTup, 2))

newTup = put_elem(myTup, 3, "world")

p.(elem(newTup, 3))
