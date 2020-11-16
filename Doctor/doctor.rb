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
  # Returns: Array of patients

  def add_patient(patient, time)
    if self.free_at?(time)
      @patients.each { |patient| @schedule[time] = patient }
      @patients
    end
  end

  # Params:
  #
  # - patient: String
  #
  # Returns: Array of patients

  def patients
    @patients.each { |patient| puts patient }
    @patients
  end

  # Params:
  # - time: Integer
  #
  # Returns: Boolean

  def free_at?(time)
    @schedule = Hash.new { |h, k| h[k] = [] }
    @patients.each { |patient| @schedule[time] << patient }

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
  end
end
