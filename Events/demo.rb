require "./lib/event"
require "./lib/feed"

event1 = Event.new("Programming", "some fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google")

# event1 = Event.new(title: "Programming", description: "some fastive events about programming scince", location: "Tambov", start_time: "10.02.2005", end_time: "12.02.2005", organizer_email: "tambov@fastive.ru", link: "google", tags: ["programming", "ruby", "rails"], status: "pending")

event2 = Event.new("Ruby's Day", "meeting of the programmers in ruby ", "London", "19.05.2010", "21.05.2010", "ruby@london.com", "facebook")

event3 = Event.new("Day of Rails", "meeting people who loves rails",
                   "Riga", "10.08.2015", "15.08.2015", "rails@riga.com", "twitter")

event4 = Event.new("Docker", "conference for programmers who are interested in docker", "Lima", "16.07.2019", "19.07.2019", "docker@lima.io", "google")

event5 = Event.new("Devops", "Conference for devops engineers", "Moscow", "05.09.2020", "07.09.2020", "union@devops.com", "telegramm")

def to_s
  "Event: #{@title} - #{@description} - #{@location} - #{@start_time} - #{@end_time} - #{@organizer_email} - #{@link}"
end

pp event1

feed = Feed.new
#pp feed.add(event1.to_s)
# feed.add(event2)
# feed.add(event3)
# feed.add(event4)
# feed.add(event5)
#pp feed.all.first.to_s

#pp feed.sort_by(:start_time)
#pp feed.upcoming(5)

feed.find(tags: ["ruby"])
#pp feed.by_organizer("ruby@london.com")
