class RaceMemosController < ApplicationController
  def index
    @race_memos = RaceMemo.all
  end

  def new
    @race_memo = RaceMemo.new
  end

  def create
    @race_memo = RaceMemo.new(race_memo_params)
    if @race_memo.save
      redirect_to race_memos_path
    else
      render :new
  end
end

  def show
    @race_memo = RaceMemo.find(params[:id])
  end

  def edit
    @race_memo = RaceMemo.find(params[:id])
  end

  def update
    @race_memo = RaceMemo.find(params[:id])
    if @race_memo.update(race_memo_params)
      redirect_to race_memo_path(@race_memo)
    else
      render :edit
    end
  end

  def destroy
    @race_memo = RaceMemo.find(params[:id])
    @race_memo.destroy
    redirect_to race_memos_path
  end

  private

  def race_memo_params
    params.require(:race_memo).permit(:race_name, :held_on, :prediction_memo, :result_memo, :track_condition, :main_horse, :second_horse, :dark_horse)
  end
end
