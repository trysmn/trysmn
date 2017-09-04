require 'sqlite3'
require_relative 'doctor'
require_relative 'doctor_repo'

DB = SQLite3::Database.new('doctors.rb')

repo = DoctorRepository.new(DB)
whoever = Doctor.new(name: 'whoever', age: 33, specialty: 'epidemiology')

repo.add(whoever)
p repo.all

p whoever
