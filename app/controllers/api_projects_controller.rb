class ApiProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects.select(:name)
  end

end
