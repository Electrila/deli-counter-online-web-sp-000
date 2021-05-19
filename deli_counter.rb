def line(katz_deli)
  line = ""
  if katz_deli.length == 0
    line << "The line is currently empty."
  else
    line << "The line is currently: "
    last_person = katz_deli[-1]
    katz_deli.delete_at(-1)
    katz_deli.each_with_index do |name, index|
      line << "#{index + 1}. #{name} "
    end
    line << "#{katz_deli.length + 1}. #{last_person}"
  end
  puts line
end

def take_a_number(katz_deli, name)
  line = ""
  katz_deli << name
  line = "Welcome, #{name}. You are number #{katz_deli.length} in line."
  puts line
end

def now_serving(katz_deli)
  puts "Currently serving #{katz_deli[0]."
  katz_deli.shift
end