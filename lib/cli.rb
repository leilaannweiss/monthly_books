class CLI
  def call
    Scraper.new.get_list
  end
end
