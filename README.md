# Spotlify

Streaming music service

## Artist
- name: string
- bio: text
- genre: string
- (albums)
- (label)

### add validation


## Song
- name: string
- artist: foreign key
- duration: int
- released_at: date
- (album)
- (genre)

### add helper for display of duration
### change form to use select for choosing artist
### add greater year selection
### add validation song and artist (max bio length 8000)

### Add colour scheem to site
### Display songs from different decades with different colour scheem
### add a play count model to the app, which you increment on a songs show page
### add top 10 songs page


## song play count
- song_id: foreign key
- count: int


## Playlists
- name: string
- songs: foreign key
- created_at: timestamp
- (subscribers)
- (is public)


- Usere can sign up, create a profile
