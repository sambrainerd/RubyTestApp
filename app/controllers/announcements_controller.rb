class AnnouncementsController < ApplicationController
  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      flash[:notice] = "Announcement was successfully posted"
      redirect_to announcement_path(@announcement)
    else
      render :new
    end
  end

  def edit
    @announcement = Announcement.find(params[:id])
  end

  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update(announcement_params)
      flash[:notice] = "Announcement was successfully updated"
      redirect_to announcement_path(@announcement)
    else
      render :edit
    end
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  private
    def announcement_params
      params.required(:announcement).permit(:announcement,:details,:priority)
    end
end