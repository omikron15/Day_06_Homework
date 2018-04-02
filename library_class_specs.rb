require 'minitest/autorun'
require 'minitest/rg'
require_relative("library_class.rb")



class TestLibrary < MiniTest::Test



  def test_library_books()

      books =   {
          title: "lord_of_the_rings",
          rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
          }
        }

        test_library = Library.new(books)

      assert_equal(books, test_library.books_list)
  end

  def test_get_book_info_by_title()

      books = {
          title: "lord_of_the_rings",
          rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
          }
        }

        test_library = Library.new(books)


      result = test_library.get_book_info_by_title("lord_of_the_rings")
      assert_equal(books, result)
  end



end
