def fibonacci(num)
    lastNumber = 1;
    auxiliator = 0;
    number = 1;
    sequence = [];

    num.times do
        sequence.push(number);
        # puts "Last: #{lastNumber} Actual: #{number}";
        auxiliator = lastNumber;
        lastNumber = number;
        number = number + auxiliator;
    end

    return sequence;
end

print fibonacci(10).join(", ");
puts "";
    