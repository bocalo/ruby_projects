# Расписание приема врача

# Создайте класс Patient и класс Doctor. Пусть доктор может принять несколько
# пациентов, установите расписание того, как доктор будет принимать 16 пациентов
# в течение 8 часового рабочего дня.

# - На пациента выделяется 30 мин
# - время перерыва у доктора
# - время работы доктора
# - свободное время

require_relative "doctor"
require_relative "patient"

doctor = Doctor.new(name: "Иван Васильевич", starts_at: 8, ends_at: 16)
doctor.schedule
# => { 8 => nil, 9 => nil, 10 => nil }
patient1 = Patient.new(name: "Петька")
doctor.add_patient(patient1, 8)
# => { 8 => patient1, 9 => nil, 10 => nil }
patient2 = Patient.new(name: "Васька")
doctor.add_patient(patient2, 8)
# => !!!
doctor.add_patient(patient2, 9)
# => { 8 => patient1, 9 => patient2, 10 => nil }
doctor.patients
# => [patient1, patient2]
doctor.add_patient(patient1, 10)
# => { 8 => patient1, 9 => patient2, 10 => patient1 }
doctor.patients
# => [patient1, patient2]
doctor.free_at?(8)
# => false
doctor.free_at?(5)
# => false | !!!
doctor.working_hours
# => (8..16) | [8, 9, 10, ...]
doctor.name
# => Иван Васильевич
