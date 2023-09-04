require './app'

def main
  app = App.new
  loop do
    app.display_options
    app.choose_option
    puts "\n"
  end
end

main
