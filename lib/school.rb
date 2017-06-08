require 'pry'
class School

attr_reader :roster

  def initialize(school)
    @school = school
    @roster={}
  end

  def add_student(name, grade)
    if @roster[grade]
        @roster[grade] << name
      else
        @roster[grade]= []
        @roster[grade] << name
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |key,value|
      value.sort!
    end
    # binding.pry
  end
  # Pry.start
end
