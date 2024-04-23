CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255),
    email VARCHAR(255),
    avatar VARCHAR(255),
    roleId INT,
    balance BIGINT,
    created_at TIMESTAMP
);

CREATE TABLE Movie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    director VARCHAR(255),
    actors VARCHAR(255),
    categoryId INT,
    content TEXT,
    rate INT,
    duration TIME,
    eposide TEXT,
    releaseDate TIMESTAMP,
    image VARCHAR(255),
    teaser VARCHAR(255),
    created_at TIMESTAMP
);

CREATE TABLE Category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(255)
);

CREATE TABLE Role (
    id INT AUTO_INCREMENT PRIMARY KEY,
    roleName VARCHAR(255)
);


CREATE TABLE WatchHistory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    movieId INT,
    watchingTime INT,
    FOREIGN KEY (userId) REFERENCES User(id),
    FOREIGN KEY (movieId) REFERENCES Movie(id)
);

CREATE TABLE WatchList (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    movieId INT,
    watchingTime INT,
    isWatching BOOLEAN,
    FOREIGN KEY (userId) REFERENCES User(id),
    FOREIGN KEY (movieId) REFERENCES Movie(id)
);

CREATE TABLE Favourite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    movieId INT,
    created_at TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES User(id),
    FOREIGN KEY (movieId) REFERENCES Movie(id)
);

CREATE TABLE Comment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    movieId INT,
    content VARCHAR(255),
    Reply VARCHAR(255),
    created_at TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES User(id),
    FOREIGN KEY (movieId) REFERENCES Movie(id)
);

CREATE TABLE GlobalRoom (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP
);

CREATE TABLE Message (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    roomId INT,
    body VARCHAR(255),
    link VARCHAR(255),
    created_at TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES User(id),
    FOREIGN KEY (roomId) REFERENCES GlobalRoom(id)
);

CREATE TABLE Rate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    movieId INT,
    content VARCHAR(255),
    star FLOAT,
    created_at TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES User(id),
    FOREIGN KEY (movieId) REFERENCES Movie(id)
);

CREATE TABLE Notifications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT,
    type INT,
    content JSON,
    FOREIGN KEY (userId) REFERENCES User(id)
);
