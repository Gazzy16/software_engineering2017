class Room < ApplicationRecord
    belongs_to :Hotel

    validate do
        if square_meters.to_f < 100 || square_meters.to_f > 200
            errors.add(:square_meters, "blabla")
    end

    vlaidate do
        hotel = Hotel.find(hotel_id)
        if hotel.rooms.length + 1 >10
            errors.add(:rooms, "blabla2")
    end

    validate do
        sum = 0
        hotel = Hotel.find(hotel_id)
        hotel.rooms.each do |r|
                sum = r.square_meters + sum
        end
        if sum > 7000
            errors.add(:rooms, "blabla3")
    end
end
