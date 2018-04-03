class Student

  attr_accessor :name, :cohort
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end #end of initialize method

  def studnet_talk()
      return "I can talk!"
  end #end of studnet_talk method


  def student_favourite_language(language)
      return "I love #{language}"
  end #End of student_favourite_language method


end # End of Student class
