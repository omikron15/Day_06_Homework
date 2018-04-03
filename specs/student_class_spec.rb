require 'minitest/autorun'
require 'minitest/rg'
require_relative("../student_class.rb")

class TestStudent < MiniTest::Test

  def setup()

    @test_student = Student.new("Connor", 5)

  end #End of setup method

  def test_student_name()

      assert_equal("Connor", @test_student.name)

  end #End of test_student_name method

  def test_student_cohort()

    assert_equal(5, @test_student.cohort)

  end #End of test_student_cohort method

  def test_set_student_name()

    @test_student.name = "Ev"
    assert_equal("Ev", @test_student.name)

  end #End of test_set_student_name method

  def test_set_student_cohort()

    @test_student.cohort = 4
    assert_equal(4, @test_student.cohort)

  end #End of test_set_student_cohort method

  def test_student_talk()

    result = @test_student.studnet_talk()
    assert_equal("I can talk!", result)

  end #End of test_student_talk method

  def test_student_favourite_language()

    result = @test_student.student_favourite_language("Ruby")
    assert_equal("I love Ruby", result)

  end #End of test_student_favourite_language method

end #End of Teststudent class
