class FacultiesController < ApplicationController
  def index
    @permissions = ["Admin", "User"]
    @faculties = Faculty.all.order(:faculty_name)
  end
  
  def addfaculty
     
    @permissions = ["Admin", "User"]
  	if params[:class] != nil && params[:class][:FacultyName] != "" && params[:class][:permission] !=
    		Faculty.create!(faculty_name: params[:class][:FacultyName], permission: params[:class][:permission])
    		flash[:success] = "New Faculty Member added"
    		redirect_to root_path
    end
  end
  
  def show
    @faculty = Faculty.find(params[:id])
  end
  
  def destroy
    @id = params[:id]
    @faculty = Faculty.find_by id: @id
    @faculty.destroy
    redirect_to '/faculties'
  end
end