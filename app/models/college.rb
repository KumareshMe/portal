class College < ApplicationRecord
    validates :college_name, presence: true, length: { minimum: 3, maximum: 25 }
    validates_uniqueness_of :college_name
end