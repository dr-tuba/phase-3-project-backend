class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    teachers = Teacher.all
    teachers.to_json(include: :school)
  end

  get "/students" do
    students = Student.all
    students.to_json(include: :school)
  end

  get "/music-library" do
    music = Music.all
    music.to_json(include: :school)
  end

  get "/instruments" do
    instruments = Instrument.all
    instruments.to_json(include: :student)
  end

  get "/lockers" do
    lockers = Locker.all
    lockers.to_json(include: :student)
  end

end
