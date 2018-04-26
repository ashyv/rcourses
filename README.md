# Ruby on Rails Decal Spring 2018 Final Project 

Title:​ RCourses

Team Members:​ Ashwin Vaidyanathan, Kevin Deguzman

Demo Link:​ Stored locally right now

Idea: ​A "better" version of bCourses. 

## Models and Description:

Teacher

 + Has name, email, avatar and other Devise login information 
 + Teachers have admin access. We enforce this admin access by checking if current_teacher exists. 
 + Teachers can create a new course, add students to a course, and create new assignments. Teachers can also download student submission and grade their assignments. 

Student
 + Has name, email, and cal_id. 
 + Students can login with just their cal student id. 
 + Students can add a course. Students can also see their assignments for a given course, and upload files for their respective assignments. 
 
Course
 + Has many students, one teacher, and a name.

Assignment
 + Has name, course_id, teacher_id, student_id, grade, points, and due_date. 

Submission
 + Upload assignment for Carrierwave gem
 + Can submit any type of file
 + Contains an assignment_id field so that the submission can be linked to the appropriate assignment. 


## Features:
Teachers
+ Teachers can log in
+ Teachers can make assignments for a course
+ Teachers can upload a profile picture
+ Teachers can add students to a course
+ Teachers can download student submissions
+ Teachers can grade student assignments 

Students
+ Students can submit assignment (submission)
+ Students can log in with just Cal ID
+ Students can add a course 
+ Students can view their assignments and get their total grade


## Division of Labor:
+ Ashwin: models, controllers, views, styling, gems
+ Kevin: models, controllers, views, gems, seed file
