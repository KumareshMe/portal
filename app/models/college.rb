class College < ApplicationRecord
    validates :college_name, presence: true, length: { minimum: 3, maximum: 75 }
    validates_uniqueness_of :college_name
end