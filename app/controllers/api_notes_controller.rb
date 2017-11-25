class ApiNotesController < ApplicationController

  def index
    @user = User.find_or_create_by(name: params[:name])
    @notes = @user.notes.select(:id, :title, :body)
    render json: @notes
  end

  def create
    @user = User.find_by(name: params[:name])
    @user.notes.create(title: params[:title], body: params[:body])
    @notes = @user.notes.select(:id, :title, :body)
    render status: 200, json: @notes
  end

end
