class PagesController < ApplicationController
  def index
     @notes = Note.order(posted_at: :desc).limit(10)
  end
end
