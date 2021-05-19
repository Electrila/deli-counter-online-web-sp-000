katz_deli = []

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
  if katz_deli.length == 0
    line << "Welcome, #{name}. You are number 1 in line."
  #else
    #katz_deli << "#{name}"
  end
  puts line
end