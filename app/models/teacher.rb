class Teacher < ActiveRecord::Base
    belongs_to :school
    has_many :students, dependent: :destroy 
    has_many :instruments, through: :students
    has_many :music, through: :school
    has_many :lockers, through: :students
end