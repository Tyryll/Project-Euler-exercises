def fibonacci(limit)
    fib_sequence = []  # Stores Fibonacci numbers as array
    previous = 0  # First Fibonacci number
    current = 1  # Second Fibonacci number
  
    while current <= limit  # Continue generating until we exceed the limit
      fib_sequence << current  # Add the Fibonacci number to the list
      fib_seq = previous + current  # Calculate next Fibonacci number
      previous = current  # Update previous
      current = fib_seq  # Move to next Fibonacci number
    end
  
    return fib_sequence  # Return the complete sequence
  end
  
  def sum_of_even(fib_sequence)
    sum = 0
    fib_sequence.each do |num| # 
      sum += num if num.even?  # Add only even Fibonacci numbers
    end
    return sum
  end
  
  # Get user input
  puts "Enter the maximum number for the Fibonacci sequence"
  limit = gets.chomp.to_i
  
  # Generate Fibonacci sequence
  fib_sequence = fibonacci(limit)
  
  # Output result
  puts "The sum of all even Fibonacci numbers up to #{limit} is: #{sum_of_even(fib_sequence)}"
  