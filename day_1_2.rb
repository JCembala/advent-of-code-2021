def sum_next_three(index, array)
  sum = 0
  (index..index + 2).each do |current_index|
    sum += array[current_index]
  end
  sum
end

filename = 'input_1.txt'
depth = File.readlines(filename).map(&:to_i)
measurement_increases_count = 0

(1..depth.length - 3).each do |current_measurement|
  if sum_next_three(current_measurement, depth) > sum_next_three(current_measurement - 1, depth)
    measurement_increases_count += 1
  end
end

puts measurement_increases_count
