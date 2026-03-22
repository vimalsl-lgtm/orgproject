CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);
CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rank_num INT,
    title VARCHAR(255),
    release_year INT,
    imdb_rating DECIMAL(3,1),
    director VARCHAR (50),
    genre VARCHAR(100),
    about VARCHAR(255)
    );
     CREATE TABLE tv_shows (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rank_num INT,
    title VARCHAR(255),
    start_year INT,
    end_year INT,
    imdb_rating DECIMAL(3,1),
    director VARCHAR (50),
    genre VARCHAR(100),
    about VARCHAR(255)
    );
    INSERT INTO movies (rank_num, title, release_year, imdb_rating, director, genre, about) VALUES
(1, 'The Shawshank Redemption', 1994, 9.3, 'Frank Darabont', 'Drama', 'Two imprisoned men bond over years, finding solace and redemption through acts of decency.'),
(2, 'The Godfather', 1972, 9.2, 'Francis Ford Coppola', 'Crime, Drama', 'The aging patriarch of an organized crime dynasty transfers control to his reluctant son.'),
(3, 'The Dark Knight', 2008, 9.0, 'Christopher Nolan', 'Action, Crime, Drama', 'Batman faces the Joker, a criminal mastermind who plunges Gotham into chaos.'),
(4, 'The Godfather Part II', 1974, 9.0, 'Francis Ford Coppola', 'Crime, Drama', 'The early life of Vito Corleone and rise of Michael as head of the family.'),
(5, '12 Angry Men', 1957, 9.0, 'Sidney Lumet', 'Drama', 'A jury deliberates the fate of a young boy accused of murder.'),
(6, 'Schindler''s List', 1993, 9.0, 'Steven Spielberg', 'Biography, Drama, History', 'A businessman saves Jewish lives during the Holocaust.'),
(7, 'The Lord of the Rings: The Return of the King', 2003, 9.0, 'Peter Jackson', 'Adventure, Drama, Fantasy', 'The final battle for Middle-earth begins as Frodo nears Mount Doom.'),
(8, 'Pulp Fiction', 1994, 8.9, 'Quentin Tarantino', 'Crime, Drama', 'Interwoven stories of crime in Los Angeles.'),
(9, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 8.8, 'Peter Jackson', 'Adventure, Drama, Fantasy', 'A hobbit begins a journey to destroy a powerful ring.'),
(10, 'The Good, the Bad and the Ugly', 1966, 8.8, 'Sergio Leone', 'Western', 'Three gunslingers compete to find hidden treasure.');
INSERT INTO tv_shows (rank_num, title, start_year, end_year, imdb_rating, director, genre, about) VALUES
(1, 'Breaking Bad', 2008, 2013, 9.5, 'Vince Gilligan', 'Crime, Drama, Thriller', 'A chemistry teacher turns to making meth after a cancer diagnosis.'),
(2, 'Planet Earth II', 2016, 2016, 9.5, 'David Attenborough', 'Documentary', 'A breathtaking look at wildlife across the planet.'),
(3, 'Band of Brothers', 2001, 2001, 9.4, 'Tom Hanks, Steven Spielberg', 'Drama, War', 'The story of Easy Company during World War II.'),
(4, 'Chernobyl', 2019, 2019, 9.3, 'Johan Renck', 'Drama, History', 'A dramatization of the 1986 nuclear disaster.'),
(5, 'The Wire', 2002, 2008, 9.3, 'David Simon', 'Crime, Drama, Thriller', 'The drug scene in Baltimore through multiple perspectives.'),
(6, 'Avatar: The Last Airbender', 2005, 2008, 9.3, 'Michael Dante DiMartino', 'Animation, Action, Adventure', 'A young boy must master elements to save the world.'),
(7, 'Blue Planet II', 2017, 2017, 9.3, 'David Attenborough', 'Documentary', 'Exploration of the oceans and marine life.'),
(8, 'Game of Thrones', 2011, 2019, 9.2, 'David Benioff, D.B. Weiss', 'Action, Adventure, Drama', 'Noble families battle for control of the Iron Throne.'),
(9, 'Rick and Morty', 2013, NULL, 9.1, 'Justin Roiland, Dan Harmon', 'Animation, Adventure, Comedy', 'A scientist and his grandson go on chaotic adventures.'),
(10, 'The Sopranos', 1999, 2007, 9.2, 'David Chase', 'Crime, Drama', 'A mob boss balances family life and criminal empire.');