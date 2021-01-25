students = [
  ['Dr. Hannibal Lecter', :november],
  ['Darth Vader', :november],
  ['Nurse Ratched', :november],
  ['Machael Corleone', :november],
  ['Alex DeLarge', :november],
  ['The Wicked Witch of the West', :november], 
  ['Terminator', :november],
  ['Freddy Krueger', :november],
  ['The Joker', :november],
  ['Joffrey Baratheon', :november],
  ['Norman Bates', :november]
]
def print_header
  puts "The students of Villain Acedemy"
  puts "------------"
end

def print_names(student_arr)
  student_arr.each do |student|
    puts "#{student[0]} (#{student[1]}) cohort"
  end
end

def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great students"
end

print_header
print_names(students)
print_footer(students)

