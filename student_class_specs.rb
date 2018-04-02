require 'minitest/autorun'
require 'minitest/rg'
require_relative("student_class.rb")

class TestStudent < MiniTest::Test

  def test_student_name()

      test_student = Student.new("Connor", 5)
      assert_equal("Connor", test_student.student_name)
  end

  def test_student_cohort()

    test_student = Student.new("Connor", 5)
    assert_equal(5, test_student.student_cohort)

  end

  def test_set_student_name()

    test_student = Student.new("Connor", 5)
    test_student.set_student_name("Ev")
    assert_equal("Ev", test_student.student_name)

  end

  def test_set_student_cohort()

    test_student = Student.new("Connor", 5)
    test_student.set_student_cohort(4)
    assert_equal(4, test_student.student_cohort)

  end

  def test_student_talk()

    test_student = Student.new("Connor", 5)
    result = test_student.studnet_talk()
    assert_equal("I can talk!", result)

  end

  def test_student_favourite_language()

    test_student = Student.new("Connor", 5)
    result = test_student.student_favourite_language("Ruby")
    assert_equal("I love Ruby", result)

  end

end
