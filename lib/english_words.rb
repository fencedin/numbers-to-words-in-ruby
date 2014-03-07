def number_word(number)
  if number < 20
    return number_converter(number)
  elsif number >= 20 && number < 100
    return number_converter((number/10)*10) + " " +  number_converter(number % 10)
  elsif number >= 100 && number < 1000
    return (number_converter((number/100)) + " hundred " + number_word(number % 100)).strip
  elsif number >= 1000 && number < 1000000
    return (number_word((number/1000)) + " thousand " + number_word(number % 1000)).strip
  elsif number >= 1000000 && number < 1000000000
    return (number_word((number/1000000)) + " million " + number_word(number % 1000000)).strip
  elsif number >= 1000000000 && number < 1000000000000
    return (number_word((number/1000000000)) + " billion " + number_word(number % 1000000000)).strip
  elsif number >= 1000000000000 && number < 1000000000000000
    return (number_word((number/1000000000000)) + " trillion " + number_word(number % 1000000000000)).strip
  end
end

def number_converter(number)
answer = ""
dictionary = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
              16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninty"}
  dictionary.each do |key, value|
    if number == key
       answer += value
    end
  end
  answer
end
puts number_word(100019)
