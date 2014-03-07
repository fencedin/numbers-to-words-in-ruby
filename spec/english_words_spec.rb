require('rspec')
require('english_words')

describe('number_converter') do
  it('it returns the word for the number inputted') do
    number_converter(1).should(eq("one"))
  end
end
describe('number_word') do
  it('it returns the word for the number inputted over 20') do
    number_word(25).should(eq("twenty five"))
  end
  it('it returns the word for the number inputted over 100') do
    number_word(525).should(eq("five hundred twenty five"))
  end
  it('it returns the word for the number inputted over 1000') do
    number_word(1525).should(eq("one thousand five hundred twenty five"))
  end
  it('it returns the word for the number inputted over 100000') do
    number_word(100525).should(eq("one hundred thousand five hundred twenty five"))
  end
  it('can handle numbers up to 100 trillion') do
    number_word(123_123_456_789_123).should(eq("one hundred twenty three trillion one hundred twenty three billion four hundred fifty six million seven hundred eighty nine thousand one hundred twenty three"))
  end
end

