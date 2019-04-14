The Greatest Books
Objectives:
1. Provide a CLI.
2. CLI provides access to data from a web page.
3. Used the scraped data to show a list of the Greatest Books
4. The user then has an option to leave the page or view more information
5. The user then has the option to see a the other lists the books shows up on
6. The user can use the command 'open' to open up the webpage for the book

Overview:
This project will scrape the data from the web page and list the top 50 books. The project has a CLI which will welcome the user and give them an option to choose a book from 1-50. When the user types in the rank of the book it will return the book with the title and author along with a short overview. The CLI will then prompt the user to see which lists the book appears on, go back to the list of books of exit.

Navigation:
1. In the terminal type ./bin/top_books_of_month to invoke the CLI
2. The terminal will then print out hte list of books, type in a rank from 1-50 to view the title, author, overview
3. The terminal will then ask if you want to view the lists the book is in and you will need to respond with 'yes', 'another book', or exit
4. If you choose 'yes' you will see a list of lists that the book appears
  If you choose 'another book' you will be redirected to the list of books again
  If you choose 'exit' you will recieved a exit message
5. When you choose 'yes' and are given a list you then have the option to open up in a webpage by the 'open' command.

