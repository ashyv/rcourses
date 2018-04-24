class StudentCoursesController < ApplicationController


def create
   @student = Student.find_by(cal_id: params[:student_id])
   @course = Course.find(params[:course_id])
   StudentCourse.create({student_id: @student.id, course_id: @course.id})
   redirect_to course_path(params[:course_id])
  end

end
