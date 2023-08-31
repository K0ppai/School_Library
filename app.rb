class App
  def initialize
    @people = []
    @book = []
    @rentals = []
  end

  def choose_option
    option = gets.chomp
    case option
    when "1"
      puts "List all books"
    when "2"
      puts "List all people"
    when "3"
      create_person
    when "4"
      puts "Create a book"
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
    case input
    when "1"
      puts "create_student"
    when "2"
      puts "create_teacher"
    else
      puts "Please enter a valid input"
    end
  end
end
