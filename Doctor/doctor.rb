class Doctor
  WORKTIME = 8
  COUNT_OF_PATIENTS = 16

  def initialize(grade_of_illness, shedule = {})
    @grade_of_illness = 0
    @shedule = shedule
  end

  def is_ill?(patient)
    @grade_of_illness > 0
  end

  def make_shedule(patient)
    if patient.is_ill?
      @shedule[key] = patient
    end
  end

  def time_of_reception
    @shedule.each { |patient, time|  }
  end
end

class Patient
  def initialize(name, age)
    @name = name
    @age = age
  end
end