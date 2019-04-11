# handles scraping and creating book and category objects
class Scraper
  attr_accessor :list


  def get_page
    Nokogiri::HTML(open("https://thegreatestbooks.org/"))
  end

  def get_list
   page = get_page
   page.css('.item.pb-3.pt-3.border-bottom').each do |option|
   rank = option.css('.col h4').text.strip[0]
   title = option.css('.col h4').text.strip[4..-1]
   overview = option.css('p').text.strip
   url = "https://thegreatestbooks.org" + option.css('.col h4 a').first.attr("href")
   @list = List.new(rank: rank, title: title, overview: overview, url: url)
  end
 end

  def showing_list(list)
    show_list = Nokogiri::HTML(open(list.url))
    show_list.css(".row pt-3").each do |listing|
      list.table = listing.css(".list-unstyled").text
   binding.pry
    end
  end

end



# page.css('.item.pb-3.pt-3.border-bottom')[0].css(p)
# page.css('.item.pb-3.pt-3.border-bottom')[0].css('h4')
# page.css('.item.pb-3.pt-3.border-bottom')








