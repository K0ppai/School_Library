require "./person"
require "./student"
require "./teacher"
require "./classroom"
require "./book"
require "./rental"

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def choose_option
    option = gets.chomp
    case option
    when "1"
      display_books
    when "2"
      display_people
    when "3"
      create_person
    when "4"
      create_book
    when "5"
      puts "Create a rental"
    when "6"
      puts "List all rentals for a given person id"
    when "7"
      puts "File saved successfully!"
      puts "Thank you for using this app!"
      exit
    end
  end

  def create_person
    puts "Do you want to create a student (1) or a teacher (2)? [Input the number]: "

    input = gets.chomp

    puts "Age: "
    age_input = gets.chomp

    puts "Name: "
    name_input = gets.chomp

    case input
    when "1"
      create_student(age_input, name_input)
    when "2"
      create_teacher(age_input, name_input)
    else
      puts "Please enter a valid input"
    end
  end

  def create_student(age, name)
    puts "Has parent permission? [Y/N]"
    permission_input = gets.chomp
    case permission_input.upcase
    when "Y"
      @people << Student.new(age, name)
      puts "Person created successfully"
    when "N"
      @people << Student.new(age, name, parent_permission: false)
      puts "Person created successfully"
    else
      puts "Please enter a valid input"
    end
  end
  
  def create_teacher(age,name)
    puts "Specialization: "
    specialization = gets.chomp
    @people << Teacher.new(specialization,age,name)
    puts "Person created successfully!"
  end

  def display_people
    @people.map{|person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"}
  end

  def create_book
    puts "Title: "
    title = gets.chomp
    puts "Author: "
    author = gets.chomp
    @books << Book.new(title,author)
    puts "Book created successfully!"
  end

  def display_books
    @books.map{|book| puts "Title: \"#{book.title}\", Author: \"#{book.author}\""}
  end
end
