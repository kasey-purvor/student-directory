students = [
  'Dr. Hannibal Lecter',
  'Darth Vader',
  'Nurse Ratched',
  'Machael Corleone',
  'Alex DeLarge',
  'The Wicked Witch of the West', 
  'Terminator',
  'Freddy Krueger',
  'The Joker',
  'Joffrey Baratheon',
  'Norman Bates',
]
def print_header
  puts "The students of Villain Acedemy"
  puts "------------"
end

def print_names(names_arr)
  names_arr.each do |name|
    puts name
  end
end

def print_footer(names_arr)    
  puts "Overall we have #{names_arr.length} great students"
end

print_header
print_names(students)
print_footer(students)

