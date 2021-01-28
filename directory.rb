def input_students
  puts "Please input student names"
  puts "To finish entering names, enter empty name value"  
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

def print_names(student_arr)
  student_arr.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great students"
end

def interactive_menue
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit the program"
    command = gets.chomp
    case command
      when "1" 
        students += input_students
      when "2"
        print_header
        print_names(students)
        print_footer(students)
      when "9" 
        break
      else
        puts "Unrecognised command, please try again" 
    end
  end
end

interactive_menue
