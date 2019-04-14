# frozen_string_literal:true

require 'byebug'

class CLI
  def call
    greeting
    book_list

    input = gets.strip.to_i
    input_book_condtion(input)

    book = lookup_book_by_rank(input)
    book_info(book)
    more_info

    input2 = gets.strip.downcase
    input_list_condition(input2, book)

    next_steps
    input3 = gets.strip.downcase
    input_next_steps(input3, book)
  end

  def greeting
    puts "Welcome to The Greatest Books"
    puts "Here is a list of the greatest books:"
    puts "Enter a number of the book you want (1 - 50) to see more information or type books to see the list again or exit to leave."
  end

  def book_list
    Scraper.new.get_books
    Book.all.each do |book|
      puts book.rank.to_s + "." + " " + book.title.to_s
    end
  end

  def book_info(book)
    puts "You have chose #{book.title}. Here's some quick info:"
    puts "Overview: #{book.overview}"
  end

  def additional_book_info(book)
    scraper = Scraper.new.showing_list(book)
    puts "Here's more info about #{book.title}:"
    puts "Book lists:"
    book.display_lists
  end

  def lookup_book_by_rank(input)
    Book.find_by_rank(input)
  end

  def input_book_condtion(input)
    if input >= 1 && input <= 50
      true
    else
      puts "Not a valid entry, please choose from 1 - 50"
      call
    end
  end

  def input_list_condition(input2, book)
    if input2 == "yes"
      additional_book_info(book)
    elsif input2 == "exit"
     exit
    else
      call
    end
  end

  def input_next_steps(input3, book)
    if input3 == "another book"
      call
    elsif input3 == "open"
      open_url(book)
    elsif input3 == "exit"
      exit
    else
      puts "Not a valid entry, going back to book list."
      call
    end
  end

  def more_info
    puts "Would you like to see the other top lists this book shows up on?"
  end

  def options(book)
    puts back
    puts "#{visit}#{book.title}."
    puts exit_message
  end

  # def redirect
  #   puts "Redirecting back to book list..."
  #   call
  # end

  # def end_commands(book)
  #   input2 = gets.strip.downcase
  #   if input2 == "another_book"
  #     call
  #   elsif input2 == "open"
  #     open_url(book)
  #     end_commands(book)
  #   elsif input2 == "exit"
  #     exit_cli
  #   else
  #     puts "Not a valid entry, going back to book list."
  #     call
  #   end
  # end

  def next_steps
    puts "Would you like to view another book or open the webpage?"
    puts "Please type 'another book' or 'open' to proceed"
  end

  def visit
    "Type 'open' to visit the Book webpage "
  end

  def exit_message
    "Type 'exit' to exit out of the book list."
  end

  def open_url(book)
    Launchy.open(book.url.to_s)
  end

  def exit_cli
    puts "Goodbye!"
  end
end


