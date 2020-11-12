# Расписание приема врача

# Создайте класс Patient и класс Doctor. Пусть доктор может принять несколько
# пациентов, установите расписание того, как доктор будет принимать 16 пациентов
# в течение 8 часового рабочего дня.

# - На пациента выделяется 30 мин
# - время перерыва у доктора
# - время работы доктора
# - свободное время

require_relative 'main'
require_relative 'patient'

class Doctor
  attr_accessor :name, :starts_at, :ends_at

  def initialize(name, starts_at, ends_at)
    @name = name
    @starts_at = starts_at
    @ends_at = ends_at
    @shedule = Hash.new { |h, k| h[k] = nil }
    @patients = []
  end

  def self.shedule(patient, time)
    @patient.each { |patient| @shedule[time] = patient }
  end

  def self.patients
    @patients.each { |patient| patients << patient }
    @patients
  end

  def self.free_at?(time)
    @shedule[time] = 0
  end

  def self.working_hours
    [@starts_at..@ends_at]
  end
end

