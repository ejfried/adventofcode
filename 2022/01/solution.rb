counts = []
current_calorie_count = 0

File.open("input.txt").each do |line|
  line.chomp!
  if line.empty?
    counts << current_calorie_count
    current_calorie_count = 0
  else
    calories = line.to_i
    current_calorie_count += calories
  end
end

top_three = counts.sort.last(3)
puts top_three.sum
