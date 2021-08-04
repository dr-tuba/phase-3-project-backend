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

  get "/lockers/:id" do 
    locker = Locker.find(params[:id])
    locker.to_json
  end

  patch "/lockers/:id" do 
    locker = Locker.find(params[:id])
    locker.update(
      student_id: params[:student_id]
    )
    locker.to_json
  end

end
