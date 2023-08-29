require './person'

class Student < Person
  def initialize(classroom, age, _name = 'Unknown', parent_permission: true)
    super(age, 'Unknown', parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
