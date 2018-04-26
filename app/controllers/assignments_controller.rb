class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]

  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = Assignment.all
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
    @assignment = Assignment.find(params[:id])
    @assignments = Assignment.where(course_id: @assignment.course_id).
    where(teacher_id: @assignment.teacher_id).
    where(name: @assignment.name)
  end

  # GET /assignments/new
  def new
    @assignment = Assignment.new
  end

  # GET /assignments/1/edit
  def edit
  end

  # POST /assignments
  # POST /assignments.json
  def create
    @course = Course.find(params[:course_id])
    @students = @course.students
    if @students
      @students.each do |student|
        Assignment.create!({due_date: params[:due_date], points: params[:points], student_id: student.id, 
          name: params[:name], cal_id: student.cal_id, teacher_id: params[:teacher_id], course_id: params[:course_id]})
        # @assignment = Assignment.new()
        # @assignment.name = params[:name]
        # @assignment.teacher_id = params[:teacher_id]
        # @assignment.course_id = params[:course_id]
        # @assignment.student_id = student.cal_id
        # @assignment.save
    end
    else
      @assignment = Assignment.new()
      @assignment.name = params[:name]
      @assignment.teacher_id = params[:teacher_id]
      @assignment.course_id = params[:course_id]
      @assignment.points = params[:points]
      @assignment.due_date = params[:due_date]
      @assignment.save
    end
  
    
    #placeholder assignment in case there are no students in class
    

    
    # respond_to do |format|
    #   if @assignment.save
    #     format.html { redirect_to "/courses/#{params['course_id']}", notice: 'Assignment was successfully created.' }
    #     format.json { render :show, status: :created, location: @assignment }
    #   end
    # end
    redirect_to course_path(@course)
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    respond_to do |format|
      if @assignment.update(score: params["score"])
        format.html { redirect_to @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url, notice: 'Assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.fetch(:assignment, {})
    end
end
