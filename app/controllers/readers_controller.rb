class ReadersController < ApplicationController
  def new
    @reader = Reader.new
  end

  def create
    reader = Reader.new(reader_params)
    reader.save
    redirect_to root_url, notice: 'You are registered'
  end

  def index
  end

  private

  def reader_params
    params.require(:reader).permit(:email, :password, :password_confirmation)
  end
end
