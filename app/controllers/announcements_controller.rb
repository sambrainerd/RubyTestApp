class AnnouncementsController < ApplicationController
  def new
    @announcement = Announcement.new
  end
end