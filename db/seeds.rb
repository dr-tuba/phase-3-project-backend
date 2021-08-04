puts "Clearing Database..."

School.destroy_all
Student.destroy_all
Instrument.destroy_all
Music.destroy_all
Teacher.destroy_all
Locker.destroy_all

puts "🌱 Seeding spices..."

puts "Creating Schools..."
5.times do
    School.create(school_name: "#{Faker::Address.city} High School")
end

puts "Creating Teachers..."
10.times do
    Teacher.create(
        full_name: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password,
        school_id: School.ids.sample
    )
end

puts "Creating Students..."
50.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    Student.create(
        school_id: School.ids.sample,
        teacher_id: Teacher.ids.sample,
        first_name: first_name,
        last_name: last_name,
        grade_level: rand(9..12),
        email: Faker::Internet.email(name: "#{first_name} #{last_name}", separators: "."),
        picture_url: Faker::Lorem.image(size: "226x160", search_terms: ['yearbook_picture'])
    )
end

condition = ["Broken", "Fair", "Good", "New", "Excellent"]
model = ["Stradivarius", "Elite", "New Standard", "Olds", "Prestige", "Soverign", "Cardinal", "Symphony", "Heritage"]
puts "Creating Instruments..."
100.times do
    Instrument.create(
        student_id: nil,
        school_id: School.ids.sample,
        instrument_name: Faker::Music.instrument,
        model: model.sample,
        brand: Faker::Company.name,
        serial_number: Faker::Number.number(digits: 8),
        condition: condition.sample
    )
end

instrumentation = ["Band", "String Orchestra", "Full Orchestra", "Jazz Band", "Marching Band"]
genre = ["March", "Pop", "Classical", "Bebop", "Stand Tune", "Swing", "Contemporary"]
title_first = ['Dark', 'Bright', 'Blue', 'American', 'Strong', 'Ancient', 'Celtic', 'Jubilant', 'Exuberant', 'Legend of the', 'Grand', 'Medieval', 'Symphonic', 'Prarie', 'Rhythm of the', 'Spirit of the', 'Mysterious', 'Triumphant', 'Persistent', 'Mystic', 'Unquiet', 'Into the', 'Across the', 'Soaring', 'Fantastic', 'Brave']
title_middle = ['Eagle', 'Hawk', 'River', 'Sky', 'Courage', 'Vortex', 'Ghost', 'Wind', 'Cloud', 'Valley', 'Mountain', 'Moonlight', 'Creek', 'Sea', 'Night', 'Storm', 'Oak', 'Crystal', 'Ember', 'Groove', 'Victory', 'Shadow', 'Sun', 'Force', 'Water', 'Flight']
title_last = ['Variations', 'Folk Song Suite', 'Journey', 'Majesty', 'Exaltation', 'March', 'Odyssey', 'Legacy', 'Chant', 'Above', 'Overture', 'Declaration', 'Fantasy', 'Portrait', 'Prophecy', 'Metropolis', 'Ritual', 'Sketches', 'Impressions', 'Flourishes', 'Fire', 'Celebration', 'Reflections', 'Echoes', 'Dances', 'Awakening']
difficulty_level = [0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 5, 6]
publisher = ["Hal Leonard", "Wingert Jones", "Alfred", "Carl Fischer LLC", "C L Barnhouse Company", "FJH Music Company", "Grand Mesa Music", "Boosey & Hawkes", "Neil A. Kjos Music", "Manhattan Beach Music", "Hafabra Music"]
puts "Creating Music..."
100.times do
    Music.create(
        school_id: School.ids.sample,
        title: "#{title_first.sample} #{title_middle.sample} #{title_last.sample}",
        instrumentation: instrumentation.sample,
        genre: genre.sample,
        difficulty_level: difficulty_level.sample,
        publisher: publisher.sample
    )
end

lockers = *(1..3500)
students = Student.ids
puts "Creating Lockers..."
25.times do
    Locker.create(
        student_id: students.shuffle!.pop,
        locker_number: lockers.shuffle!.pop,
        locker_combination: "#{Faker::Number.decimal_part(digits: 2)}-#{Faker::Number.decimal_part(digits: 2)}-#{Faker::Number.decimal_part(digits: 2)}"
    )
end

puts "✅ Done seeding!"
