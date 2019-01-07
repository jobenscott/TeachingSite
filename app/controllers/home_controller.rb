class HomeController < ApplicationController
	before_action :authenticate_user!
  def Dash
  end

  def account

  end

  def courses

  	
  end

  def create_course
  	course = nil
  	if !params[:name].nil?
  		course = Course.new()
  		course.name = params[:name]
  		course.description = params[:desc]
  		course.difficulty = params[:difficulty].to_i
  		course.save!
    end
 # @course = {:name => params[:name], :desc => params[:desc], :difficulty => params[:difficulty] }
  	 respond_to do |format|
      format.json {
        render :js => course.to_json.html_safe
      }
    end
  end

  def get_courses
  	courses = Course.all

  	respond_to do |format|
      format.json {
        render :js => courses.to_json.html_safe
      }
    end
  end

  def course
  	@course = Course.find(params[:id])

  end
end
