require './nameable.rb'

class Decorator < Nameable
  def initialize (nameable)
    @nameable = nameable
  end
end