# handles scraping and creating book and category objects
class Scraper
  attr_accessor :categories, :books, :doc

  def get_page
  Nokogiri::HTML(open("https://www.barnesandnoble.com/b/top-books-of-the-month/_/N-2luc"))
  end

  def scrape_categories
    categories_elements = categories_elements.css(".rule").each do |element|
      categories_elements
      #title = element.css(".product-shelf-title")
      binding.pry
    end
  end

  # def scrape_books
   #   book_elements = doc.css("hotBooksWithDesc_#{scrape_categories}")
   #   #binding.pry
   # end

  # end


end









