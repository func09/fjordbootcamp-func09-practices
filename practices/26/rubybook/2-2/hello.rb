# Hello
puts "hello world!"

# こんにちわ
puts "こんにちわ"

# string1
puts "hello " + "world!"

# string2
puts "hello" + " " + "world!"

# string3
puts 2 + 3
puts "2" + "3"

# error1
begin
  puts 3 + "3"
rescue => e
  puts e
end

# to_i to_s
puts 3.to_s + "3"
puts 3 + "3".to_i
