class PeoplePowerCalculator
  def initialize(number)
    @number = number
  end

  def people?
    number%3 == 0
  end

  def power?
    number%5 == 0
  end

  def people_power?
    people? && power?
  end

  private

  attr_reader :number
end


[*1..100].each do |num|
  calc = PeoplePowerCalculator.new(num)

  if calc.people_power?
    puts "#{num} People Power"
  elsif calc.people?
    puts "#{num} People"
  elsif calc.power?
    puts "Power"
  else
    puts num
  end
end
