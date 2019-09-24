 # rand is not inclusive so add one to make it between 1 and 10 inclusive
x = rand(10) + 1
guess = 0

until guess == x
    puts 'Pick a number between 1-10 inclusive: '
    # Strip to remove trailing whitespace and newline character
    guess = gets.strip.to_i

    if guess > x
        puts 'too high'
    elsif guess < x
        puts 'too low'
    end

end

puts "Correct, the answer is #{guess}"