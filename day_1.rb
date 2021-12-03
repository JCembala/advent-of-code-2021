filename = "input_1.txt"
depth = File.readlines(filename).map(&:to_i)
measurement_increases_count = 0

(1..depth.length - 1).each do |current_measurement|
  measurement_increases_count += 1 if depth[current_measurement] > depth[current_measurement - 1]
end

puts measurement_increases_count
