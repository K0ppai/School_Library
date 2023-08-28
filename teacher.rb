require './person.rb'

class Teacher < Person
  def initialize (specialization,name = "Unknown", age, parent_permission: true)
    super(name, age, parent_permission:parent_permission)
    @specialization = specialization
  end
end