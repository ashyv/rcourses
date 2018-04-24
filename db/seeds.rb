# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[['Jon Snow', 26299532, 'jsnow@gmail.com'],['Daniel Caesar', 25644521, 'dcaesar@hotmail.com'], ['Gordon Ramsay', 20194827, 'lambsauce@gmail.com']].each do |name, sid, email|
  Student.create!(
    name: name,
    cal_id: sid,
    email: email
  )
end
#looks like both default and student_id are the same



# [['Jhene Aiko', 'jaiko@berkeley.edu'],['Frank Ocean', 'focean@berkeley.edu'], ['Donald Glover', 'childishgambino@berkeley.edu']].each do |name, email|
#   Teacher.create!(
#     name: name,
#     email: email
#   )
# end

#how to create course?

# [['English 1', 1], ['Math 1', 2], ['Chemistry 1', 3]].each do |name, tid|
#   Course.create!(
#     name: name,
#     teacher_id: tid
#   )
# end

# [[26299532, 1], [25644521, 2], [20194827, 3]].each do |sid, cid|
#   StudentCourse.create!(
#   student_id: sid,
#   course_id: cid
#   )
# end
