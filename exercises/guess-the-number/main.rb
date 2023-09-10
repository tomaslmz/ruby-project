# Important declarations to start the game
level = 1;
secretNumber = rand(0... level*10);
lifes = 5;
guesses = [];

puts "Welcome to the Guess the number on Ruby!\nThis is my first program on Ruby.";

while lifes > 0 do
    puts "----------------------\nLevel: #{level} - Range: 0-#{level*10}\nGuesses: #{guesses.join(' , ')}\nLifes: #{lifes}\n----------------------";
    print "Guess the number: ";
    number = gets.to_i;

    unless number == secretNumber
        puts "----------------------\nIncorrect answer";
        lifes-=1;
        guesses.push("#{number} >") unless number < secretNumber;
        guesses.push("#{number} <") unless number > secretNumber;
    else
        puts "----------------------\nCorrect answer";
        lifes = 5;
        level+=1;
        secretNumber = rand(0... level*10);
        guesses = [];
    end
end

puts "Secret number: #{secretNumber}" unless lifes > 0;