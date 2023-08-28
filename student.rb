require "./person.rb"

class Student < Person
  def initialize (classroom,name = "Unknown", age, parent_permission: true)
    super(name, age, parent_permission:parent_permission)
    @classroom = classroom
  end
end