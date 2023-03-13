class StudentsController < ApplicationController

    def index 
        students = Student.all 
        render json: students
    end

    def grades 
        render json: Student.order("grade DESC")
    end

    def highest_grade 
        max_grade = Student.maximum(:grade)
        student_with_max_grade = Student.find_by(grade: max_grade)
        render json: student_with_max_grade
    end
end
