require './nameable.rb'

class Decorator < Nameable
  def initialize (nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < 
  def initialize
    
  end
end