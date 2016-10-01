module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def edit_artist(song)
    link_to("Edit Artist", edit_artist_song_path(song.artist, song)) unless song.artist.nil?
  end

  def artist_select(not_nested, song)
    if not_nested
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end
end
