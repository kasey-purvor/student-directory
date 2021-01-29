# Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be "Now we have 1 student". 
# How can you fix it so that it used singular form when appropriate and plural form otherwise?
def input_students
  puts "Please input student names"
  puts "To exit press return twice"  
  students = []
  name = gets.chomp
  until name.empty?
    students << {name: name, cohort: :november}
    puts "We now have #{students.length} students." if students.length > 1
    puts "We now have #{students.length} student." if students.length == 1
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villain Acedemy"
  puts "------------"
end

def print_names(student_arr)
  if !student_arr.empty?  
    student_arr.each_with_index { |student, ind|
      puts "#{ind+1}. #{student[:name]} (#{student[:cohort]} cohort)"
    }
  end
end

def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great student" if student_arr.length == 1 
  puts "Overall, we have #{student_arr.length} great students" if student_arr.length > 1 
end

students = input_students 
print_header
print_names(students)
print_footer(students)