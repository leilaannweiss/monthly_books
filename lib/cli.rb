class CLI
  def call
    scraper = Scraper.new
    scraper.get_books
    scraper.showing_list(Book.all.first)
  end
end
