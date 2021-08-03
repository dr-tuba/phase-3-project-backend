class School < ActiveRecord::Base
    has_many :teachers, dependent: :destroy
    has_many :students, dependent: :destroy
    has_many :instruments, dependent: :destroy
    has_many :music, dependent: :destroy
    has_many :lockers, through: :students 

    def owned_instruments
        instruments.count
    end

end