# handles scraping and creating book and category objects
class Scraper


  def get_page
    Nokogiri::HTML(open("https://thegreatestbooks.org/"))
  end

  def get_list
   page = get_page
   options = page.css('.item.pb-3.pt-3.border-bottom')
   rank_list = options.css('h4')
   overview = options.css('p')
   binding.pry
 end
end



# page.css('.item.pb-3.pt-3.border-bottom')[0].css(p)
# page.css('.item.pb-3.pt-3.border-bottom')[0].css('h4')
# page.css('.item.pb-3.pt-3.border-bottom')








