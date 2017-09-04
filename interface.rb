require_relative 'models/patient'
require_relative 'models/room'
require_relative 'repos/patient_repo'

room = Room.new({})

repo = PatientRepo.new('patients.csv')
john = Patient.new(name: 'John')
ringo = Patient.new(name: 'Ringo')
george = Patient.new(name: 'George')
kurt = Patient.new(name: 'Kurt')

room.add_patient(john)
room.add_patient(ringo)
room.add_patient(george)
room.add_patient(kurt)

repo.add_patient(john)
repo.add_patient(ringo)
repo.add_patient(george)
repo.add_patient(kurt)

# p room.patients

# kurt.room

