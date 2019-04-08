class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end
  def new
    @goal = Goal.new
  end
  def create
    Goal.create(date:params[:goal][:date],weight:params[:goal][:weight])
    redirect_to action: :index
  end
end
