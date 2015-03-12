class PrayersController < ApplicationController

  # before_action :authorize

  def show
    @prayer = Prayer.find(params[:id])
  end

  def new
  end

  def create
    prayer = current_user.prayers.create(prayer_params)
    unless prayer.save
      flash[:error] = "Sorry, cannot post your prayer request"
    end
    redirect_to dashboard_path
  end

  def update
    prayer = Prayer.find(params[:id])
    prayer.update_attributes!(answered: true)
    redirect_to dashboard_path
  end

  private

  def prayer_params
    params.require(:prayer).permit(:title, :body)
  end
end
