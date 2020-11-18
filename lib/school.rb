class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    self.roster[grade] ? self.roster[grade] << name : self.roster[grade] = [name]
  end

  def grade(gradeLevel)
    self.roster[gradeLevel]
  end

  def sort
    self.roster.each_value { |studentArr| studentArr.sort!}
  end
end