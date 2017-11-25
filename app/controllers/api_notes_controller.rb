class ApiNotesController < ApplicationController

  def index
    @project = Project.find_or_create_by(name: params[:name])
    @notes = @project.notes.select(:id, :title, :body)
    render json: @notes
  end

  def create
    @project = Project.find_by(name: params[:name])
    @project.notes.create(title: params[:title], body: params[:body])
    @notes = @project.notes.select(:id, :title, :body)
    render status: 200, json: @notes
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    @notes = Project.find_by(name: params[:name]).notes.select(:id, :title, :body)
    render status: 200, json: @notes
  end

end
