@students = []
# method that stores name and cohort information in the @students array 
def store_info(name, cohort)
  if cohort.empty? ? @students << {name: name, cohort: :november} : @students << {name: name, cohort: cohort.to_sym}
  end
end
# aks user for input names and stores these in @students array   
def input_students
  puts "Please input student names. \n To finish entering names, enter 'stop'"  
  name = STDIN.gets.chomp
  until name == "stop"
    puts "Please input cohort"
    cohort = STDIN.gets.chomp
    store_info(name, cohort)
    puts "Name added successfully."
    puts "We now have #{@students.length} students."
    puts "Please input another name"
    name = STDIN.gets.chomp
  end
end
#prints output header
def print_header
  puts "The students of Villain Acedemy"
  puts "------------"
end
#prints @student array in specific format
def print_names(student_arr)
  student_arr.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
#prints output footer
def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great students"
end
#prints command choice menue
def print_menue
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save students"
  puts "4. Load Students"
  puts "9. Exit the program"
end
# enacts the user command choice 
def process(command)
  case command
    when "1" 
      input_students
    when "2"
      print_header
      print_names(@students)
      print_footer(@students)
    when "3"
      puts "Enter filename if desired, will be saved as students.csv otherwise"
      filename = STDIN.gets.chomp
      filename.nil? ? (puts "no input given") : save_students(filename)
    when "4"
      puts "Enter filename to load names from, will be from students.csv otherwise"
      filename = STDIN.gets.chomp
      filename.nil? ? (puts "no input given") : load_students(filename) 
    when "9" 
      puts "exiting program"
      exit
    else
      puts "Unrecognised command, please try again"  
  end 
end
#saves the @students array into a file in CSV format 
def save_students(filename = "students.csv") 
  file = File.open(filename, "a") { |f| 
    @students.each do |student_hsh| 
      student_data = [student_hsh[:name], student_hsh[:cohort]]
      student_csv_line = student_data.join(",")
      f.write(student_csv_line) 
    end
  }
end
# Loads the students from an external file and stores them in the @students array 
def load_students(filename = "students.csv") 
  file = File.open(filename, "r") { |f|
    f.readlines.each{ |line| 
    name, cohort = line.chomp.split(",")
    store_info(name, cohort) 
    }
  }
  puts "students loaded successfully"
end
# attempts to load student information from an external file, specified in the command prompt. 
# if not input is given in the command prompt it loads its default from students.csv 
def try_load_students
  filename = ARGV.first
  if filename.nil?
    load_students()
  elsif File.exists?(filename)
    load_students(filename)
  else
    puts "Sorry, #{filename} does not exist"
    exit
  end  
end  
# program loop that the user interacts with.    
def interactive_menue
  loop do
    print_menue
    process(STDIN.gets.chomp)    
  end
end
try_load_students
interactive_menue
