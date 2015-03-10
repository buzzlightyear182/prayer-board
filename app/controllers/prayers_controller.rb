class PrayersController < ApplicationController

  # before_action :authorize

  def show
    @prayer = Prayer.find(params[:id])
  end

  def new
  end

  def create
    prayer = Prayer.create(prayer_params)
    unless prayer.save
      flash[:error] = "Sorry, cannot post your prayer request"
    end
    redirect_to dashboard_path
  end

  private

  def build_content
    Prayer.new prayer_params
  end

  def prayer_params
    params.require(:prayer).permit(:body, :user_id)
  end
end
