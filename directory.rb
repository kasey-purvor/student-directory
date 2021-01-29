@students = []

def input_students
  puts "Please input student names. \n To finish entering names, enter 'stop'"  
  name = gets.chomp
  until name == "stop"
    @students << {name: name, cohort: :november}
    puts "We now have #{@students.length} students."
    name = gets.chomp
  end
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

def print_menue
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save students"
  puts "9. Exit the program"
end

def process(command)
  case command
    when "1" 
      input_students
    when "2"
      print_header
      print_names(@students)
      print_footer(@students)
    when "3"
      save_students 
    when "9" 
      exit
    else
        puts "Unrecognised command, please try again"  
  end 
end

def save_students
  file = File.open("students.csv", "w") 
  @students.each { |student_hsh| 
    student_data = [student_hsh[:name], student_hsh[:cohort]]
    student_csv_line = student_data.join(",")
    file.puts student_csv_line
  }
  file.close
end
  
  
  
def interactive_menue
  loop do
    print_menue
    process(gets.chomp)    
  end
end

interactive_menue
