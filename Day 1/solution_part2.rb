class Calculator
    def Calculator.calculateFuel(moduleMass)
        fuel = moduleMass
        loop do 
            fuel = (fuel.to_i / 3) - 2
            break if fuel <= 0
            yield fuel
        end
    end
end

# Calculator.calculateFuel(1233) {|f| print f, " "}

masses = File.open("input.txt","r") do |aFile|
    total_mass = 0
    aFile.each_line {|line| 
        Calculator.calculateFuel(line) {|fuel| total_mass += fuel }
    }
    puts total_mass
end

