class Computer < ApplicationRecord
  validate do
    unless ["x86","x86_64","amd64"].include? architecture
      errors.add(:architecture, 'Wrong architecture')
    end
  end
  validate :validates_with_count

  private
  def validates_with_count
    if Computer.
        where(manufacture_id: manufacture_id, architecture: architecture).
        where('date BETWEEN ? AND ?', date.beginning_of_month, date.end_of_month).
        count >=3
      errors.add(:computers, "More the 3 computers with the same architecture in the given month can not be created")
    end
  end
end
