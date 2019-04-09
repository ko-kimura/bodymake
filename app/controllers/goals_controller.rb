class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end
  def new
    @goal = Goal.new
  end
  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      #goalが保存できた時（成功した時）
      redirect_to goals_path , notice: '登録しました💫'
      #redirect_toはrouteに返す（通常の返し）
    else
      #goalが保存できなかった（失敗した時）
      #dateやweightが空だった場合、エラーメッセージを持った状態でnewに戻る
      render :new
      #render はviewのみを返す。ここではnewのviewのみを返す
      #redirect_toの場合は、仮に10個の項目があった場合は全て初期状態に戻ってしまう
    end
  end

  private

  def goal_params
    params.require(:goal).permit(
      :weight, :date,
    )
  end

end
