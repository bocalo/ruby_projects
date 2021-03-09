require "./lib/event"
require "./lib/feed"

# event1 = Event.new("Programming", "some fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google", ["programming", "science", "tambov"])
event1 = Event.new("Programming", "some ruby fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google", ["programming", "science", "tambov"])

event2 = Event.new("Ruby's Day", "meeting of the programmers in ruby ", "London", "19.05.2010", "21.05.2010", "ruby@london.com", "facebook", ["programmers", "ruby", "meeting"])

event3 = Event.new("Day of Rails", "meeting people who loves rails",
                   "Riga", "10.08.2015", "15.08.2015", "rails@riga.com", "twitter", ["rails", "riga", "twitter"])

event4 = Event.new("Docker", "conference for programmers in rails  who are interested in docker", "Lima", "16.07.2019", "19.07.2019", "docker@lima.io", "google", ["docker", "conference", "rails"])

event5 = Event.new("Devops", "Conference for devops engineers", "Moscow", "05.09.2020", "07.09.2020", "union@devops.com", "telegramm", ["devops", "union", "engineers"])

def to_s
  "Event: #{@title} - #{@description} - #{@location} - #{@start_time} - #{@end_time} - #{@organizer_email} - #{@link}"
end

#pp event1.approve
#pp event1.tags
#pp event1.description
#pp event1.send(:find_keywords)
#pp event1.validate!
new_event = Event.new("Programming", "some ruby fastive events about programming scince", "Tambov", "10.02.2005", "12.02.2005", "tambov@fastive.ru", "google", ["programming", "science", "tambov"])
new_event.approve

feed = Feed.new
feed.add(event1)
feed.add(event2)
pp feed.event1.approve
#pp feed.event1.approve
# feed.add(event2)
# feed.add(event3)
# feed.add(event4)
#pp feed.add(new_event)
#pp feed.find(tags: ["rails"])
#pp feed.by_organizer("ruby@london.com")
#feed.add(new_event)
# feed.add(event2)
#pp feed.upcoming(3)

#pp feed.find_approved
#pp feed.pending_events
#pp feed.all
