#cli controller
class CLI
  def call
    # Explain what the app does to the user
    #puts "Top Books of the Month:"
    Scraper.new.scrape_categories
    list_categories
    # menu
    # goodbye

  end

  def list_categories
    puts "Top Books of the Month: This Month's Biggest New Releases"
    Category.all.each do |category|
      puts category.title
    end
  end


  #Books=class method
  #opBooksOfMonth = object

  # def menu
  #   input = nil
  #   while input != "exit"
  #     puts "Enter the type of category of the book you would like or type categories to see the options again or type exit:"
  #     input = gets.strip.downcase
  #     categories = ["Fiction", "Nonfiction", "Teens&YA", "Youth" "Readers", "Kids"]
  #     input === categories
  #     if input = []
  #       puts "pick a category to see list of books"
  #     end


  #   end
  # end
end






  #     case input
  #     when "1"
  #       puts "Give's books of the month associated with the Fiction category"
  #    when "2"
  #       puts "Give's books of the month associated with the Nonfiction category"
  #     when "3"
  #       puts "Give's books of the month associated with the Teens&YA category"
  #     when "4"
  #       puts "Give's books of the month associated with the Youth Readers category"
  #     when "5"
  #       puts "Give's books of the month associated with the Kids category"
  #     when "categories"
  #       list_categories
  #     else
  #       puts "If you are unsure which category type categories or exit."
  #     end
  #   end
  # end

  # def goodbye
  #   puts "check back next month for new books!!!"

