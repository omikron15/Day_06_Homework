require 'minitest/autorun'
require 'minitest/rg'
require_relative("../library_class.rb")

class TestLibrary < MiniTest::Test

  def setup

    @test_books =[]
    @test_books.push({
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }, {
          title: "lord_of_the_rings_2",
          rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
          }
        })

      @test_books
      @test_library = Library.new(@test_books)

  end

  def test_library_books()
      assert_equal(@test_books, @test_library.books_list)
  end

  def test_get_book_info()

      result = @test_library.get_book_info("lord_of_the_rings")
      assert_equal(@test_books[0], result)
  end

  def test_get_book_info_2()
      result = @test_library.get_book_info("lord_of_the_rings_2")
      assert_equal(@test_books[1], result)
  end

  def test_get_book_info__not_found()
      result = @test_library.get_book_info("Connor")
      assert_nil(result)
  end

  def test_get_book_rental_info()
      result = @test_library.get_book_rental_info("lord_of_the_rings")
      assert_equal(@test_books[0][:rental_details], result)
  end

  def test_get_book_rental_info__not_found()
      result = @test_library.get_book_rental_info("Connor")
      assert_nil(result)
  end

  def test_add_book()
       @test_library.add_book("New Book")
       assert_equal(@test_books[2][:title], "New Book")
       # p @test_books[2][:title]
       # p @test_library.get_book_info("New Book")

  end

  def test_change_rental_details()

       @test_library.change_rental_details("lord_of_the_rings", "Sarah", "04/04/2018")

      hash = {
          title: "lord_of_the_rings",
          rental_details: {
           student_name: "Sarah",
           date: "04/04/2018"
          }
        }

      assert_equal(hash, @test_library.get_book_info("lord_of_the_rings"))

      p @test_library.get_book_info("lord_of_the_rings")
  end

end
