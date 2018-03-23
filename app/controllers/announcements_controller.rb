class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: [:edit,:update,:show,:destroy]
  def index
    @announcementsbase = Announcement.all
  end
  
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

  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    flash[:notice] = "Article was successfully deleted"
    redirect_to announcements_path
  end

  private
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end
    def announcement_params
      params.required(:announcement).permit(:announcement,:details,:priority)
    end
end