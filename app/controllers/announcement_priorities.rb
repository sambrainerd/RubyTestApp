class AnnouncementPrioritiesController < ApplicationController
  def new
    @announcement_priority = AnnouncementPriority.new
  end
end