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
  attr_reader :name, :starts_at, :ends_at, :schedule

  def initialize(name:, starts_at:, ends_at:)
    @name = name
    @starts_at = starts_at
    @ends_at = ends_at
    @schedule = {}
    @patients = []
  end
  # Params:
  # - time: Integer,
  # - patient: String
  #
  # Returns: [Patients]
  def add_patient(patient, time)
    # Этот метод возвращает хеш { time => patient , time => patient }
    if self.free_at?(time)
      # если у доктора есть свободное время, 
      # то в массив пациентов добавляются пациенты, каждому пациенту соответствует его время в хеше
      @patients.each { |patient| @schedule[time] = patient }
      @patients << Patient.new(name)
    end
  end
  # Params:
  #
  # - patient: String
  #
  # Returns: [Patients]
  def patients
    @patients.each { |patient| puts patient }
    @patients
  end
  # Params:
  # - time: Integer
  #
  # Returns: Boolean

  def free_at?(time)
    # Здесь я пытался задать массив в хеше
    @schedule = Hash.new { |h, k| h[k] = [] }
    # Здесь я хотел, чтобы каждый пациент добавлялся в расписание
    @patients.each { |patient| @schedule[time] << patient }
    # если пациента нет в расписании, значит доктор свободен
    return true if @schedule[time] == nil
    false
  end

  # Params:
  # - starts_at: Integer,
  # - ends_at: Integer
  #
  # Returns: Array[integers]

  def working_hours
    (@starts_at..@ends_at).to_a
    # TODO: вы можете использовать геттеры (attr readers) вместо переменных объекта (instance variables)
    # вот так
    (starts_at..ends_at).to_a
  end
end
