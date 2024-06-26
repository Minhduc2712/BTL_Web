-- use filmweb;

-- CREATE TABLE Category (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE Room (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL
-- );

-- CREATE TABLE `User` (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     roomId INT Default 1,
--     password VARCHAR(255),
--     email VARCHAR(255),
--     phone VARCHAR(255),
--     fullname VARCHAR(255),
--     isAdmin BOOLEAN,
--     isActive BOOLEAN,
--     token VARCHAR(255),
--     FOREIGN KEY (roomId) REFERENCES Room(id)
-- );

-- CREATE TABLE Movie (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     title VARCHAR(255) NOT NULL,
--     href1 VARCHAR(255),
--     href2 VARCHAR(255),
--     href3 VARCHAR(255),
--     poster VARCHAR(255),
--     views INT,
--     shares INT,
--     description TEXT,
--     daodien VARCHAR(255),
--     dienvien VARCHAR(255),
--     mota TEXT,
--     price INT,
--     isActive BOOLEAN,
--     addDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

CREATE TABLE movie_categories (
    movie_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movie(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE,
    UNIQUE (movie_id, category_id)
);



-- CREATE TABLE Comment (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     userId INT,
--     movieId INT,
--     comment TEXT,
--     commentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (userId) REFERENCES User(id),
--     FOREIGN KEY (movieId) REFERENCES Movie(id)
-- );

-- CREATE TABLE Episode (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     episodeNumber INT NOT NULL,
--     title VARCHAR(255) NOT NULL,
--     description TEXT,
--     href VARCHAR(255) NOT NULL,
--     movieId INT NOT NULL,
--     release_date TIMESTAMP NOT NULL,
--     FOREIGN KEY (movieId) REFERENCES Movie(id)
-- );

-- CREATE TABLE History (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     userId INT,
--     movieId INT,
--     viewedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     isLiked BOOLEAN,
--     likedDate TIMESTAMP,
--     FOREIGN KEY (userId) REFERENCES User(id),
--     FOREIGN KEY (movieId) REFERENCES Movie(id)
-- );

-- CREATE TABLE Hoadon (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     TxnRef VARCHAR(255),
--     movieId INT,
--     userId INT,
--     OrderInfo VARCHAR(255),
--     ResponseCode VARCHAR(255),
--     TransactionNo VARCHAR(255),
--     BankCode VARCHAR(255),
--     Amount VARCHAR(255),
--     PayDate TIMESTAMP,
--     FOREIGN KEY (movieId) REFERENCES Movie(id),
--     FOREIGN KEY (userId) REFERENCES User(id)
-- );


-- CREATE TABLE Message (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     roomId INT,
--     userId INT,
--     content VARCHAR(255) NOT NULL,
--     sendDate TIMESTAMP NOT NULL,
--     FOREIGN KEY (roomId) REFERENCES Room(id),
--     FOREIGN KEY (userId) REFERENCES User(id)
-- );

-- CREATE TABLE Notification (
--      id INT AUTO_INCREMENT PRIMARY KEY,
--      userId INT,
--      type INT,
--      content VARCHAR(255),
--      type_create INT,
--      seen INT,
--      isActive INT,
--      addDate TIMESTAMP,
--      FOREIGN KEY (userId) REFERENCES User(id)
--  );

-- CREATE TABLE Rating (
--      id INT AUTO_INCREMENT PRIMARY KEY,
--      userId INT,
--      movieId INT,
--      rating INT,
--      ratingDate TIMESTAMP,
--      FOREIGN KEY (userId) REFERENCES User(id),
--      FOREIGN KEY (movieId) REFERENCES Movie(id)
--  );

-- CREATE TABLE Share (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     userId INT,
--     movieId INT,
--     email VARCHAR(255),
--     shareDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     FOREIGN KEY (userId) REFERENCES User(id),
--     FOREIGN KEY (movieId) REFERENCES Movie(id)
-- );




