class Library


  attr_accessor :books_list
  def initialize(books_list)
    @books_list = books_list
  end

def get_book_info(title)

      for book in @books_list
        if book[:title] == title
          return book
        end
      end
      return nil

end #end of function

def get_book_rental_info(title_to_search)

   book_info = get_book_info(title_to_search)
   if book_info != nil
     return rental_info = book_info[:rental_details]
   end

end #end of function

def add_book(book_name)

  entry = {
      title: book_name,
      rental_details: {
       student_name: "",
       date: ""
      }
    }

  @books_list.push(entry)


end

def change_rental_details(title, name, date)

  book = get_book_info(title)
  book[:rental_details] = {student_name: name, date: date}

end

end #End of class
