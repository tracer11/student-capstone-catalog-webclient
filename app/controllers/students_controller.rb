class StudentsController < ApplicationController
 
  def index
    @students = []
    Unirest.get(
                "#{ENV["API_HOST"]}/api/v1/students.json",
                headers:{
                        "Accept" => "application/json",
                        }
                ).body.each do |student_hash|
      @students << Student.new(student_hash)
    end
  end

  def show
    @student = Unirest.get("#{ENV["API_HOST"]}/api/v1/students/#{id}.json",
                          headers:{
                                  "Accept" => "application/json"
                            }).body
  end
end
