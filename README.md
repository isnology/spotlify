# Spotlify

Streaming music service

## Artist
- name: string
- bio: text
- genre: string
- (albums)
- (label)


## Song
- name: string
- artist: foreign key
- duration: int
- released_at: date
- (album)
- (genre)


## Playlists
- name: string
- songs: foreign key
- created_at: timestamp
- (subscribers)
- (is public)


- Usere can sign up, create a profile
