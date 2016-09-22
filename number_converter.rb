# Convert a natural number to its Roman number equivalent.
class NumberConverter
  ROMAN_NUMBERS = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC',
                    50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV',
                    1 => 'I' }.freeze

  def run
    @running = true
    puts 'Please press X to exit'
    while @running
      print '=> '
      begin
        command_builder(gets.chomp.split[0])
      rescue => e
        puts e.message
      end
    end
  end

  def to_roman(num)
    return raise IntegerRequiredError.new, 'Please, insert only integers' unless num.is_a?(Integer)
    ROMAN_NUMBERS.reduce('') do |res, (natural, roman)|
      whole_part, num = num.divmod(natural)
      res << roman * whole_part
    end
  end

  private

  def command_builder(input)
    case input
    when 'x', 'X'
      exit_console
      else
      puts to_roman(input.to_i)
    end
  end

  def exit_console
    puts 'I look forward to hearing from you'
    @running = false
  end
end

class IntegerRequiredError < StandardError
end
