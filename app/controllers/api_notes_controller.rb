class ApiNotesController < ApplicationController

  def index
    @user = User.find_or_create_by(name: params[:name])
    @notes = @user.notes
    render json: @notes
  end

end
