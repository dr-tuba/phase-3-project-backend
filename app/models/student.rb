class Student < ActiveRecord::Base
    belongs_to :school
    belongs_to :teacher
    has_one :locker
    has_many :instruments
end