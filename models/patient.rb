class Patient
  attr_reader :name
  attr_accessor :room, :id
  def initialize(args)
    # initializing both parameter variables in the hash args, with default values on the other side of the or sign:
    @name = args[:name]
    @room = args[:room] || nil
    @cured = args[:cured] || false
    # another way to define the instance variable @cured that takes boolean values (only works for boolean values:
    # @cured = args.fetch(:cured, false)
  end

  # Method to ask whether a patient is cured or not
  def cured?
    @cured
  end

  # Method to cure a patient:
  def cure
    @cured = true
  end
end
