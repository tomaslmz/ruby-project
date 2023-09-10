def caesar(text, number)
    newString = [];
    alphabetic = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    
    index = -1;
    
    text = text.split("")

    text.each do | textLetter |
        alphabetic.each_with_index do | alphabeticLetter, i |
            if textLetter != ' '
                    if number+i > 25
                        newString.push(alphabetic[i+number-26]) if textLetter == alphabeticLetter;
                        newString.push(alphabetic[i+number-26].upcase) if textLetter == alphabeticLetter.upcase;
                    else
                        newString.push(alphabetic[i+number]) if textLetter == alphabeticLetter;
                        newString.push(alphabetic[i+number].upcase) if textLetter == alphabeticLetter.upcase;
                    end
                end
            else
                newString.push(" ");
                break;
            end
        end
    end

    return newString.join("");
end

puts caesar("What a string", 5);