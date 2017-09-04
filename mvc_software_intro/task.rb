# Class Task

class Task
  attr_reader :name
  def initialize(name)
    @name = name
    @done = false
  end

  # Creating a new method to see if the method is done or not:
  def done?
    @done #done? (used if we wanted to encapsulate)
  end

  def mark_as_done
    @done = true
  end

  # # If we don't want the user to see what the method does, encapsulate it by
  # # creating and referring to a private method:
  # private

  # def done?
  #   @done
  # end
end
