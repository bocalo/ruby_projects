require "./lib/schedule"

describe DailySchedule do
  subject(:daily) { DailySchedule.new(working_hours, busy_hours) }
  let(:working_hours) { (9..18).to_a }
  let(:busy_hours) { [14, 15, 18] }
  describe "#available?" do
    it "should return false if all hours are included in working hours" do
      expect(daily.available?([15])).to be(false)
    end
    it "should return true if all hours are included in working hours" do
      expect(daily.available?([10])).to be(true)
    end
    it "should return false if all hours are included in working hours" do
      expect(daily.available?([7])).to be(false)
    end
    it "should return true if all hours are included in working hours" do
      expect(daily.available?([10])).to be(true)
    end
    it "should return false if some hours are included in working hours and some ones in busy hours" do
      expect(daily.available?([9, 18])).to be(false)
    end
    it "should return false if some hours are included in working hours and some ones in busy hours" do
      expect(daily.available?([14, 15, 18, 9])).to be(false)
    end
  end
end

# Реализовать класс, который проверяет доступен ли сотрудник в заданные часы
# Конструктор принимает два массива - рабочие часы и занятые часы.
# Метод проверки принимает массив часов, если сотрудник недоступен хотя бы в один из переданных часов - метод возвращает false.
# Если сотрудник доступен во все переданные часы - возвращается true.

# class DailySchedule
#   def initialize(working_hours, busy_hours)
#   end

#   def available?(hours)
#   end
# end

# DailySchedule.new((9..18).to_a, [14, 15, 18).available?([15]) => false
# DailySchedule.new((9..18).to_a, [14, 15, 18).available?([10]) => true
# DailySchedule.new((9..18).to_a, [14, 15, 18).available?([7]) => false
# DailySchedule.new((9..18).to_a, [14, 15, 18).available?([7, 10]) => false
