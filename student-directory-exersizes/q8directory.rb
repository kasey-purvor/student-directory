# Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts. 
# To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option),
# iterate over it and only print the students from that cohort.

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

def list_of_cohorts(students_arr)
  cohort_arr = []
  students_arr.map{ |student| 
    cohort_arr << student[:cohort]
    cohort_arr = cohort_arr.uniq
  }
  cohort_arr
end
  
def print_header
  puts "The students of Villain Acedemy"
  puts "------------"
end

def print_names(student_arr, cohort_arr)
  puts "Names, grouped by cohort:"
  cohort_arr.each{ |month|
    puts "#{month}: "
    student_arr.each {|student_hsh| 
    if student_hsh[:cohort] == month
      puts student_hsh[:name]
    end
    }
    puts "\n"
  }  
end

def print_footer(student_arr)    
  puts "Overall, we have #{student_arr.length} great students"
end

students = input_students 
cohort_list = list_of_cohorts(students)
print_header
print_names(students,cohort_list)
print_footer(students)

