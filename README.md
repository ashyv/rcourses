# Ruby on Rails Decal Spring 2018 Final Project 

Title:​ RCourses

Team Members:​ Ashwin Vaidyanathan, Kevin Deguzman

Demo Link:​ railsdecal.com

Idea: ​A "better" version of bCourses. 

## Models and Description:

+ Teacher

 + has name, email and 
 + Teachers have admin access
 + Teachers can create a new course

+ Student
 + has name, email and

+ Assignment
 + has name, course id, teacher id, grade, points

+ Submission
 + upload assignment for Carrierwave gem
 + can submit any type of file

+ Course
 + has many students, one teacher


## Features:
+ Teachers can log in
+ Students can submit assignment (submission)
+ Students can log in with Cal ID
+ Teachers can make assignments for a course
+ Teachers and Students can see assignments for a course
+ Teachers can upload a profile picture


## Division of Labor:
+ Ashwin: models, controllers, views, styling, gems
+ Kevin: models, controllers, views, gems, seed file