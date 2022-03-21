[*1..100].each do |num|
  if num%3 == 0 && num%5 == 0
    puts "#{num} People Power"
  elsif num%3 == 0
    puts "#{num} People"
  elsif num%5 == 0
    puts "Power"
  else
    puts num
  end
end
