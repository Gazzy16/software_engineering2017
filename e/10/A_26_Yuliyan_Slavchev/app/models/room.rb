class Room < ApplicationRecord
  belongs_to :hotel

  validates :area, inclusion: 100..200

  validate :rooms_area_sum
  validate :ten_rooms
  
  private 
    def ten_rooms
        if  hotel.rooms.count > 10
            errors.add(:hotel, 'Hotel can not has more than 10 rooms')
        end
    end

    def rooms_area_sum
        if hotel.rooms.sum(:area) + self.area > 7000
            errors.add(:rooms, 'Sum of area is greater than 7000')
        end
    end
end
