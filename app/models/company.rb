class Company < ApplicationRecord
  has_many :employees
  has_many :offices
  has_many :buildings, through: :offices
  accepts_nested_attributes_for :employees
  def location
    self.offices.each do |v|
      building_name = @buildings.find(v.building_id)
      building_name.name
    end
  end
end
