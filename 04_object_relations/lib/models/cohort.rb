class Cohort
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def students
    # who are the students in this cohort?
    Student.all.select do |student|
      student.cohort == self
    end
  end

  def add_student(student)
    # how do i add a student to the cohort?
    # how do i associate this cohort with a student?
    # student.cohort # remove this student from its current cohort
    student.cohort = self
  end

end
