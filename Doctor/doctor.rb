# Расписание приема врача

# Создайте класс Patient и класс Doctor. Пусть доктор может принять несколько
# пациентов, установите расписание того, как доктор будет принимать 16 пациентов
# в течение 8 часового рабочего дня.

# - На пациента выделяется 30 мин
# - время перерыва у доктора
# - время работы доктора
# - свободное время
require_relative "patient"

class Doctor
  attr_reader :name, :starts_at, :ends_at, :schedule, :patients
  

  def initialize(name:, starts_at:, ends_at:)
    @name = name
    @starts_at = starts_at
    @ends_at = ends_at
    @schedule = Hash.new
  end

  
  def add_patient(patient, time)
    if free_at?(time)
      @schedule.values.compact.uniq << patient
    end
  end

  def free_at?(time)
   working_hours && schedule[time].nil? 
  end
  
  def working_hours
    (starts_at..ends_at).to_a
  end
end
