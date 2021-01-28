# We've been using the chomp() method to get rid of the last return character. 
# Find another method among those provided by the String class that could be used for the same purpose (although it will require passing some arguments).

def input_students
  puts "Please input student names"
  puts "To exit press return twice"  
  students = []
  name = gets.chop
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

def print_names(student_arr)
  student_arr.each_with_index do |student, ind|
    puts "#{ind+1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great students"
end

students = input_students 
print_header
print_names(students)
print_footer(students)