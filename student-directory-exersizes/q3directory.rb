# Modify your program to only print the students whose name is shorter than 12 characters.
def input_students
  puts "Please input student names"
  puts "To exit press return twice"  
  students = []
  name = gets.chomp
  until name.empty?
    students << {name: name, cohort: :november}
    puts "We now have #{students.length} students."
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villain Acedemy"
  puts "------------"
end

def print_names_under12_chars(student_arr)
  puts "students whose names are under 12 characters are:"
  student_arr.each_with_index do |student, ind|
    if student[:name].length < 12
      puts "#{ind+1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end  
  end
end

def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great students"
end

students = input_students 
print_header
print_names_under12_chars(students)
print_footer(students)

