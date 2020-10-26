require 'pry'

def badge_maker(name)
    "Hello, my name is #{name}."
end

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def batch_badge_creator(attendees)
    badges = []
    attendees.each do |n|
    badges.push("Hello, my name is #{n}.")
    end
    badges
end

def assign_rooms(attendees)
    room_assignments =[]
    attendees.each_with_index do |name, index|
        index += 1
       room_assignments.push "Hello, #{name}! You'll be assigned to room #{index}!"
    end
    room_assignments
end

def printer(attendees)
    batch_badge_creator(attendees).each do |n|
        # binding.pry
        puts n
    end
    assign_rooms(attendees).each do |room|
        puts room
    end
end