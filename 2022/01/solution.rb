global_max = 0
current_calorie_count = 0

File.open("input.txt").each do |line|
  line.chomp!
  if line.empty?
    if current_calorie_count > global_max
      global_max = current_calorie_count
    end
    current_calorie_count = 0
  else
    calories = line.to_i
    current_calorie_count += calories
  end
end

puts global_max
