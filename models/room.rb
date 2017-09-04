class Room
  attr_accessor :patients, :id
  def initialize(args)
    # @number = args[:number]
    @patients = args[:patients] || []
    @capacity = args[:capacity] || 4
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise Exception, 'is full' if full?
    # So that a patient knows which room they are in:
    p patient.room = self
    @patients << patient
  end
end
