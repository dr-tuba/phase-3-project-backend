class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    teachers = Teacher.all
    teachers.to_json(include: :school)
  end

  get "/students" do
    students = Student.all
    students.to_json(include: [:school, :locker])
  end

  post "/students" do 
    student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      grade_level: params[:grade_level].to_i,
      school_id: School.find_or_create_by(school_name: params[:school_name]).id
    )
    student.to_json
  end

  delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
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
