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
  # TODO: patient - это не String
  # - patient: String
  #
  # Returns: Array of patients

  def add_patient(patient, time)
    # TODO: что на самом деле может возвращать этот метод?
    if self.free_at?(time)
      # TODO: объясните словами, что делает этот метод
      @patients.each { |patient| @schedule[time] = patient }
      @patients
    end
  end

  # Params:
  #
  # - patient: String
  # TODO: вместо "Array of patients" мы пишем [Patient]
  # Returns: Array of patients
  # TODO: не оставляйте пробелы между комментарием и методом

  def patients
    # TODO: discuss
    @patients.each { |patient| puts patient }
    @patients
  end

  # Params:
  # - time: Integer
  #
  # Returns: Boolean

  def free_at?(time)
    # TODO: откуда вы взяли такую конструкцию?
    # Попробуйте объяснить, что она делает:
    # Hash.new { |h, k| h[k] = [] }
    @schedule = Hash.new { |h, k| h[k] = [] }

    # TODO: что делает данная конструкция?
    @patients.each { |patient| @schedule[time] << patient }

    return true if @schedule[time] == nil
    false
  end

  # Params:
  # - starts_at: Integer,
  # - ends_at: Integer
  # TODO: типа "integers" не существует
  # Returns: Array[integers]

  def working_hours
    # TODO: вы можете использовать геттеры (attr readers) вместо переменных объекта (instance variables)
    (@starts_at..@ends_at).to_a
  end
end
