class DailySchedule
  attr_reader :working_hours, :busy_hours

  def initialize(working_hours, busy_hours)
    @working_hours = working_hours
    @busy_hours = busy_hours
  end

  def available?(hours)
    hours.all? { |hour| @working_hours.include?(hour) } &&
    hours.none? { |hour| @busy_hours.include?(hour) }
  end
end



pp DailySchedule.new((9..18).to_a, [14, 15, 18]).available?([15]) #false
#pp DailySchedule.new((9..18).to_a, [14, 15, 18]).available?([10]) # true
# DailySchedule.new((9..18).to_a, [14, 15, 18]).available?([7])  #false
# DailySchedule.new((9..18).to_a, [14, 15, 18]).available?([7, 10]) #false
