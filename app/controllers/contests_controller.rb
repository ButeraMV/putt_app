class ContestsController < ApplicationController
  def index
    @contests = Contest.all
  end

  def new
  end
end