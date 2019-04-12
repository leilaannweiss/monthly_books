# frozen_string_literal: true
class CLI
  def call
    greeting
    book_list
    menu
    book = look_up_by_rank(input)
    display_book_info(book)
  end


  def greeting
    puts "Welcome to The Greatest Books"
    puts "Here is a list of the greatest books:"
  end

  def book_list
    Scraper.new.get_books
    Book.all.each do |books|
      puts books.rank.to_s + "." + " " + books.title.to_s
    end
  end

  def show_book_info
  end



  def menu
    input = nil
    while input != "exit"
      puts "Enter a number of the book you want (1 - 50) to see more information or type books to see the list again or exit to leave."
      input = gets.strip.to_i

      if input.to_i > 0
        # Book.find_by_input #=> instance of book
        show_book_info(Book.all[input.to_i-1]) #=> instance of book
      elsif input == "list"
        list_books
      else
        puts "Entry is not valid please choose a number 1 - 50 or exit to leave page"
      end
    end
  end



