class PuttersController < ApplicationController
  def new
    @putter = Putter.new
  end

  def create
    @putter = Putter.new(putter_params)

    if @putter.save
      flash[:success] = "#{@putter.name} created"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def putter_params
    params.require(:putter).permit(:name, :contest_ids => [])
  end
end
