class ApiProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects.select(:name)
  end

  def destroy
    @project = Project.find_by(name: params[:name])
    @project.destroy
    @projects = Project.all
    render status: 200, json: @projects
  end

end
