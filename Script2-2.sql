create table if not exists genre (
    id serial primary key,
    genre_name varchar (40) unique
);


create table if not exists artist (
   id serial primary key,
   artist_name varchar(40) unique not null,
   
   
);

create table if not exists genreArt (
   genre_id: integer references Genre(id),
   artist_id: integer references Artist(id),
   constraint pk primary key(genre_id, artist_id)

);
   

create table if not exists album (
   id serial primary key,
   album_name varchar(40) unique not null,
   reliz integer
     
);


create table if not exists artAlbum (
   album_id: integer references Album(id),
   artist_id: integer references Artist(id),
   constraint pk primary key(album_id, artist_id)

);


create table if not exists track (
   id serial primary key, 
   album_id integer integer not null references Album(id),
   track_name varchar(40) unique not null,
   duration numeric
      
);


create table if not exists collection (
   id serial primary key,
   collection_name varchar(40) unique not null,
   reliz integer  