class StudentCoursesController < ApplicationController


def create
   @student = Student.find_by(cal_id: params[:student_id])
   @course = Course.find(params[:course_id])
   puts("hi")
   puts(@student)
   puts(@course)
   unless @student.nil? || @course.nil? 
   	puts("bye")
   	StudentCourse.create({student_id: @student.id, course_id: @course.id})
   end
   redirect_to course_path(params[:course_id])
end

end
