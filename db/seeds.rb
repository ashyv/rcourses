# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = ['Daniel Forshey','Su Beeler','Mariella Ince','Enda Croyle','Gracia Aikens','Lucien Polasek','Sachiko Risko', 
'Ellyn Berlin','Katia Custard','Kandace Drury', 'Shirl Tank','Ron Garretson','Oliva Speer','Bob Stotz','Janett Mends',
'Louanne Herron','Pasquale Netherton','Alycia Dana','Juli Connery','Fallon Timmons','Juanita Helwig','Claretta Mcgovern',
'Jame Delara', 'Cathryn Ruder','Hyon Roemer','Kassandra Provencher','Stephaine Presti','Rasheeda Thibeault','Son Garofalo',
'Everett Toole','Dulce Barak','Kate Silveria','Tequila Amaker','Lashanda Matousek','Colene Prestridge','Theo Cabrera',
'Casandra Chipley','Lindsay Mertens','Ivey Denmon','Lindsey Keasey','Melynda Seaborn','Stephany Riter','Joaquina Mcquade',
'Yolonda Hegwood','Abigail Seaberg','Rosamond Bortle','Khalilah Jefferson','Garth Montalvo','Epifania Schuldt',
'Estrella Mcclaren']
# names = ['i', 'e', 'o']
ids = [
  95140434,12053364,82594453,52390056,18334533,95698962,42081729,85882330,40066289,78064775,46013562,55871966,91609435,39633176,
  47246115,88987413,89533464,50376855,82067493,78856879,33534605,15949888,96842070,44430824,59446185,74337777,32308585,31346675,
  63593122,12076447,56860716,97440454,90160418,77868872,94521264,21839402,24086797,27592495,57696262,51934853,23712909,44923274,
  19408429,37399450,85121817,52297374,37340135,62978107,69857558,87791995]

names.zip(ids).each do |name, sid|
  Student.create!(
    name: name,
    cal_id: sid,
    email: 'testgroup@gmail.com'
  )
end
#looks like both default and student_id are the same

teacher_names = ['Jhene Aiko', 'Childish Gambino', 'Kehlani', 'Gordon Ramsay', 'Steph Curry', 'Drake', 'Miguel',
 'Daniel Caesar', 'Goku', 'Yodel Boy']
teacher_emails = ['jaiko@berkeley.edu', 'childishgambino@berkeley.edu', 'kehlani@berkeley.edu', 'lambsauce@gmail.com', 'sc30@berkeley.edu', 
'6ix@gmail.com', 'skywalker@gmail.com', 'bestpart@her.com', 'kakarot@berkeley.edu', 'yodelboi@gmail.com']
passwords = ['testing1','testing2','testing3', 'testing4','testing5', 'testing6', 'testing7', 'testing8', 'testing9', 'testing10' ]
teacher_names.zip(teacher_emails, passwords).each do |name, email, pword|
  teacher = Teacher.new(
    name: name,
    email: email,
    password: pword, 
    # password_confirmation: pword
    )
  # teacher.skip_confirmation!
  teacher.save!
end

courses = ['Music: R&B 1', 'Music: Rap 1', 'Music: Vocals', 'Cooking: Hell\'s Kitchen', 'Basketball: 3 Point Shooting', 
  'Acting: Degrassi', 'Music: For the ladies', 'Music: Chillin', 'PE: Yelling', 'Music: Yodeling']

courses.zip([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).each do |name, tid|
  Course.create!(
    name: name,
    teacher_id: tid
  )
end



[1...5].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 1
  )
end
[6...10].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 2
  )
end
[11...15].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 3
  )
end

[16...20].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 4
  )
end

[21...25].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 5
  )
end

[26...30].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 6
  )
end

[31...35].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 7
  )
end

[36...40].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 8
  )
end

[41...45].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 9
  )
end

[46...50].each do |sid|
  StudentCourse.create!(
  student_id: sid,
  course_id: 10
  )
end

