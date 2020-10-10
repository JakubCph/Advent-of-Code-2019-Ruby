masses = File.open("input.txt","r") do |aFile|
    total_mass = 0
    aFile.each_line {|line| total_mass += (line.to_i / 3) - 2}
    puts total_mass
end