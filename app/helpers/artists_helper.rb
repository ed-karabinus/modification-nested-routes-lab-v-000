module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def edit_artist(song)
    link_to("Edit Artist", edit_artist_song_path(song.artist, song)) unless song.artist.nil?
  end
end
