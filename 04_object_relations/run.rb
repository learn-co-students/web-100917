require 'pry'
require_relative './lib/models/student.rb'
require_relative './lib/models/cohort.rb'

student1 = Student.new('Tim', 'Campbell')
student2 = Student.new('Yomi', 'Lajide')

binding.pry


cohort1 = Cohort.new('web-100917')
cohort2 = Cohort.new('web-11116')

cohort1.add_student(student1)
cohort2.add_student(student2)


binding.pry
true
