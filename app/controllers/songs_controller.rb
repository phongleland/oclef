class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @songs = Song.all
    respond_with(@songs)
  end

  def show
    respond_with(@song)
  end

  def new
    @song = Song.new
    respond_with(@song)
  end

  def edit
  end

  def create
    @song = Song.new(song_params)
    flash[:notice] = 'Song was successfully created.' if @song.save
    respond_with(@song)
  end

  def update
    flash[:notice] = 'Song was successfully updated.' if @song.update(song_params)
    respond_with(@song)
  end

  def destroy
    @song.destroy
    respond_with(@song)
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:book_id, :start_page, :end_page, :title, :composer_id)
    end
end
