resource "spotify_playlist" "frank" {
  name        = "Franklin playlist"
  description = "My playlist is so awesome"
  public      = false

  tracks = [
    data.spotify_track.demons.id,
    data.spotify_track.counting_stars.id,
    data.spotify_track.animals.id,
  ]
}

data "spotify_track" "demons" {
  url = "https://open.spotify.com/track/5qaEfEh1AtSdrdrByCP7qR"
}
data "spotify_track" "counting_stars" {
  url = "https://open.spotify.com/track/2tpWsVSb9UEmDRxAl1zhX1"
}
data "spotify_track" "animals" {
  url = "https://open.spotify.com/track/2bL2gyO6kBdLkNSkxXNh6x"
}