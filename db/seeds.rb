# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


for i in 1..100
  dep = Department.new(name: 'Department ' + i.to_s, address: i.to_s)
  dep.save

  doc = Doctor.new(name: 'Doctor ' + i.to_s, department: dep, specialization: i.to_s)
  doc.save
end


for i in 1..100
  spec = Specialization.new(name: 'Specialization ' + i.to_s)
  spec.save
end

for i in 1..100
  pat = Patient.new(first_name: 'Ivan ' + i.to_s, last_name: 'Ivanov ' + i.to_s, date_of_birth: '01.01.2003')
  pat.save

  dep = Department.find_by(id:i)
  doc = Doctor.find_by(id:i)
  pat_id = Patient.find_by(id:i)
  patcard = PatientCard.new(patient_id: pat_id.id, department_id: dep.id, doctor_id: doc.id)
  patcard.save
end