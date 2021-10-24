def greet2(name)
  puts "how are you, #{name.capitalize}?"
end

def bye
  print "ok bye!"
end

def greet(name)
  puts "hello, #{name.capitalize}!"
  greet2(name)
  puts "getting ready to say bye..."
  bye
end

greet("adit")