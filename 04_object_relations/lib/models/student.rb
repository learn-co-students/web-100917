class Student
  @@students = []

  # read and write the student's cohort
  # read the student's first name
  # read the student's last name
  attr_accessor :cohort
  attr_reader :first_name, :last_name

  # student should be initialized with a first name
  # student should be initialized with a last name
  # student should be initialized with a cohort ("web-100917")
  def initialize(first_name, last_name, cohort = nil)
    @first_name = first_name
    @last_name = last_name

    # student belongs to a cohort
    @cohort = cohort

    @@students << self
  end

  def self.all
    @@students
  end

end
