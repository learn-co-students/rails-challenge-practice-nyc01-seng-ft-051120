class Office < ApplicationRecord
    belongs_to :company
    belongs_to :building
    accepts_nested_attributes_for :offices


end
