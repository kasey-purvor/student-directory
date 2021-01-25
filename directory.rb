students = [
  {name: 'Dr. Hannibal Lecter', cohort: :november},
  {name: 'Darth Vader', cohort: :november},
  {name: 'Nurse Ratched', cohort: :november},
  {name: 'Machael Corleone', cohort: :november},
  {name: 'Alex DeLarge', cohort: :november},
  {name: 'The Wicked Witch of the West', cohort: :november}, 
  {name: 'Terminator', cohort: :november},
  {name: 'Freddy Krueger', cohort: :november},
  {name: 'The Joker', cohort: :november},
  {name: 'Joffrey Baratheon', cohort: :november},
  {name: 'Norman Bates', cohort: :november}
]
def print_header
  puts "The students of Villain Acedemy"
  puts "------------"
end

def print_names(student_arr)
  student_arr.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great students"
end

print_header
print_names(students)
print_footer(students)

