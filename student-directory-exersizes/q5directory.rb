
def input_students
  puts "Please input student names"
  puts "To exit input empty values "  
  students = []
  name = gets.chomp
  until name.empty? 
    puts "Please input your favourite hobby"
    hobby = gets.chomp
    puts "Please input your country of birth."
    cob = gets.chomp
    students << {name: name, cohort: :november, hobby: hobby, cob: cob}
    puts "We now have #{students.length} students."
    puts "Please input next student name, or hit return to finish"
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
    puts "#{ind+1}. #{student[:name]} (#{student[:cohort]} cohort).\n Favourite nobby: #{student[:hobby]}.\n Country-of-Birth: #{student[:cob]}\n"
  end
end

def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great students"
end

students = input_students 
print_header
print_names(students)
print_footer(students)

