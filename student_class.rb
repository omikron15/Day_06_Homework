class Student


  attr_accessor :name, :cohort
  def initialize(name, cohort)
    @name = name
    @cohort = cohort

  end

  def studnet_talk()
      return "I can talk!"
  end


  def student_favourite_language(language)
      return "I love #{language}"
  end


end
