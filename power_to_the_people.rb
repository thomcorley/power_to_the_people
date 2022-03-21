module PowerToThePeople
  class Presenter
    def initialize(count = 100)
      @count = 100
    end

    def self.present
      new.to_stdout
    end

    def to_stdout
      [*1..count].each do |num|
        calc = Calculator.new(num)

        if calc.people_power?
          puts "People Power"
        elsif calc.people?
          puts "People"
        elsif calc.power?
          puts "Power"
        else
          puts num
        end
      end
    end

    private

    attr_reader :count
  end

  class Calculator
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
end

PowerToThePeople::Presenter.present
