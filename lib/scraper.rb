# frozen_string_literal: true

class Scraper
  attr_accessor :book
  def get_page
    Nokogiri::HTML(open("https://thegreatestbooks.org/"))
  end

  def get_books
    page = get_page
    page.css('.item.pb-3.pt-3.border-bottom').each do |option|
      rank = option.css('.col h4').text.strip[0..1].chomp("\n")
      title = option.css('.col h4').text.strip[4..-1]
      overview = option.css('p').text.strip
      url = "https://thegreatestbooks.org" + option.css('.col h4 a').first.attr("href")
      @book = Book.new(rank: rank, title: title, overview: overview, url: url)

   end
 end

  def showing_list(book)
    showing_list = Nokogiri::HTML(open(book.url))
    showing_list.css('.list-unstyled').each do |listing|
      book.list = showing_list.css('.list-unstyled li').to_a.map{|x| x.text.strip}
    end
  end
end












