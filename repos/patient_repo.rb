require 'csv'

class PatientRepo
  attr_accessor :patients
  def initialize(csv_path)
    @csv_path = csv_path
    @patients = []
    @next_id = 0
    read_csv
  end

  def add_patient(patient)
    @next_id += 1
    patient.id = @next_id
    @patients << patient
  end

  def save
    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
    CSV.open(@csv_path, 'wb', csv_options) do |csv|
      csv << ["id", "name", "cured"]
      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.cured. patient.room.id]
      end
    end
  end

  private

  def read_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_path, csv_options) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Fixnum
      row[:cured] = row[:cured] == "true"  # Convert column to boolean
      @patients << Patient.new(row)
    end
    @next_id = @patients.empty? ? 0 : @patients.last.id
  end
end
