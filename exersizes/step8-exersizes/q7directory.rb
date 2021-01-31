# In the input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort?
#What if one of the values is empty? Can you supply a default value? The input will be given to you as a string?
#How will you convert it to a symbol? What if the user makes a typo?
def input_students
  puts "Please input student names"
  puts "To exit input empty name value"  
  students = []
  name = gets.chomp
  until name.empty?
    puts "Please input cohort"
    cohort = gets.chomp
    if cohort.empty? 
      students << {name: name, cohort: :november}
    else
      students << {name: name, cohort: cohort.to_sym}
    end
    puts "We now have #{students.length} students."
    puts "Please input next name"
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