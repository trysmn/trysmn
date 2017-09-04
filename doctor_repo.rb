class DoctorRepository
  def initialize(db)
    @db = db
  end

  def all
    @db.execute("SELECT * FROM doctors;")
  end

  def add(doctor)
    name = doctor.name
    age = doctor.age
    specialty = doctor.specialty

    @db.execute("INSERT INTO doctors (name,age,specialty)
                VALUES ('#{name}',#{age},'#{specialty}');")
  end

  def delete(id)
    @db.execute("DELETE FROM doctors WHERE id = #{id};")
  end
end
