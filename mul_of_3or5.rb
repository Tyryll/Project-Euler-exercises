def sum_of_multiples(limit) # This line defines a method sum_of_multiples with the argumeent limit
    sum = 0 # Initialize sum to start as 0
    (1...limit).each do |current| # Loop a program from 1 to a number before limit (if you want to include limit use ".." instead of "..." , current is the current iteration
      sum += current if current % 3 == 0 || current % 5 == 0 # continually add a value to sum of current is divisible by 3 or 5
    end # This ends the Loop
    return sum #this returns the variable sum
  end # this ends the method
  
  puts "Enter the maximum number" #Tells to enter a number
  limit = gets.chomp.to_i #The number entered will become the limit
  puts "The sum of all multiples of 3 or 5 below #{limit} is: #{sum_of_multiples(limit)}" #Outputs the sum of all numbers that is divisible by 3 or 5 below the number entered
