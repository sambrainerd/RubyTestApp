class AnnouncementsController < ApplicationController
  def new
    @announcement = Announcement.new
  end

  def create
    #render plain: params[:announcement].inspect
    @announcement = Announcement.new(announcement_params)
    @announcement.save
    redirect_to announcements_show(@announcement)
  end

  private
    def announcement_params
      params.required(:announcement).permit(:announcement,:details,:priority)
    end
end