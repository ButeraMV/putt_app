class ContestsController < ApplicationController
  before_action :set_contest, only: [:edit]

  def index
    @contests = Contest.all
  end

  def show
    @contest = Contest.find(params[:id])
    @participants = @contest.enrollments.where(active: true)
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

  def remove_enrollment
    contest = Contest.find(params[:contest_id])
    enrollment = contest.enrollments.where(putter_id: params[:putter_id])
    enrollment.update_all(:active => false)
  end

  private
  
  def contest_params
    params.require(:contest).permit(:name)
  end

  def set_contest
    @contest = Contest.find(params[:id])
  end
end
