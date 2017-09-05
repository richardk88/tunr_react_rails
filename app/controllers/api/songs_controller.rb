class Api::SongsController < ApplicationController
    def index
        @artist = Artist.find(params[:artist_id])
        @songs = @artist.songs.all
        render json: @songs
    end

    # def create
    #     @song = Song.new(song_params)
    #     if @song.save
    #         render json: @song
    #     else
    #         render json: {
    #             message: 'Error when creating Song'
    #         }
    #     end
    #     # redirect_to artist_path(@artist)
    #   end
    
    #   def show
    #     @song = Song.find(params[:id])
    #     render json: @song
    #   end
    
    #   def update
    #     @song = Song.find(params[:id])
    #     if @song.update(song_params)
    #         render json: @song
    #     else
    #         render json: {
    #             message: 'Error when creating Song'
    #         }
    #     end
    #     # redirect_to artist_path(@artist)
    #   end
    
    #   def destroy
    #     @song = Song.find(params[:id])
    #     @song.destroy
        
    #     render json: {
    #         message: 'Song successfully destroyed'
    #     }
    #     # redirect_to artists_path
    #   end
    
    #   private
    
    #   def song_params
    #     params.require(:song).permit(:title, :album, :preview_url)
    #   end
end
