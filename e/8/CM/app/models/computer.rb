class Computer < ApplicationRecord

belongs_to :manufacture

  validate do
    if architecture != "x86" && architecture !="x86_64" && architecture != "amd_64"
      errors.add(:architecture, "blabla")
    end
  end

  def validates_cars_in_manufacture
      sum = Car.where(architecture: architecture, year: year, manufacture_id: manufacture_id).count
      if sum >= 3
        errors.add(:computers, "blabla")
      end
  end

end
