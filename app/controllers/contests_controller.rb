class ContestsController < ApplicationController
  before_action :set_contest, only: [:edit]

  def index
    @contests = Contest.all
  end


  def new
    @contest = Contest.new
  end

  def create
    @contest = Contest.new(contest_params)
    if @contest.save
      redirect_to contest_path(@contest)
    else
      render :new
    end
  end

  def edit
    @enrollments = @contest.enrollments.where(active: true)
    @putters = @contest.putters
  end

  private

  def contest_params
    params.require(:contest).permit(:name)
  end

  def set_contest
    @contest = Contest.find(params[:id])
  end
end
