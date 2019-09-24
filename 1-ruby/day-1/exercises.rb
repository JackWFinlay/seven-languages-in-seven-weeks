# 1. Print the string "Hello, world"
puts 'Hello, world.'

# 2. For the string "Hello, Ruby", find the index of the word "Ruby".
# https://stackoverflow.com/a/10668473.
puts "Hello, Ruby".index('Ruby')

# 3. Print your name 10 times.
# "times" is a type of loop that works on integers.
# https://www.rubyguides.com/ruby-tutorial/loops/
10.times { puts "Jack" }

# Print the string "This is sentence number 1", where number 1 changes from 1 to 10.
# Note the range feature "(1..10)" is inclusive.
# https://www.rubyguides.com/ruby-tutorial/loops/
(1..10).each { |i| puts "This is sentence number #{i}"}

# Run a Ruby program from a file.
# Below answer commented out so this file is runnable.
# ruby exercises.rb