DROP DATABASE moviematrixdb;
-- -------------------------------------------------| Creating Database |-----------------------------------------------------------------------------------------------
create database MovieMatrixDB;       

-- -------------------------------------------------| Using Database |-----------------------------------------------------------------------------------------------
use MovieMatrixDB;                           

-- -------------------------------------------------| Inserting Tables|-----------------------------------------------------------------------------------------------

-- Categories (Movie / TV Series / Web Series / Show)
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- Genres
CREATE TABLE genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Actors
CREATE TABLE actors (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL
);

-- Titles
CREATE TABLE cinema_db (
    title_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT,
    duration INT,                       
    imdb_rating DECIMAL(3,1),
    category_id INT,
    genre_id INT,
    actor_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);


-- Users (50 random ids & names)
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE
);

-- Ratings given by users (optional – stubbed for you to extend)
CREATE TABLE ratings (
    rating_id INT PRIMARY KEY,
    user_id INT,
    title_id INT,
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 10),
    review TEXT,
    rating_date DATE,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (title_id) REFERENCES cinema_db (title_id)
);

-- -------------------------------------------------| Inserting values into tables |-----------------------------------------------------------------------------------------------

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Movie'),
(2, 'TV Series'),
(3, 'Web Series'),
(4, 'TV Show');

INSERT INTO genres (genre_id, genre_name) VALUES
(1, 'Drama'),
(2, 'Action'),
(3, 'Comedy'),
(4, 'Thriller'),
(5, 'Sci-Fi'),
(6, 'Fantasy');

INSERT INTO actors (actor_id, actor_name) VALUES
(1, 'Marlon Brando'),
(2, 'Christian Bale'),
(3, 'Tom Hanks'),
(4, 'Leonardo DiCaprio'),
(5, 'Brad Pitt'),
(6, 'Keanu Reeves'),
(7, 'Robert De Niro'),
(8, 'Elijah Wood'),
(9, 'Millie Bobby Brown'),
(10, 'Lee Jung-jae'),
(11, 'Bryan Cranston'),
(12, 'Emilia Clarke'),
(13, 'Jared Harris'),
(14, 'Wagner Moura'),
(15, 'Louis Hofmann'),
(16, 'Cillian Murphy'),
(17, 'Álvaro Morte'),
(18, 'Michael C. Hall'),
(19, 'Simon Baker'),
(20, 'Jennifer Aniston'),
(21, 'Steve Carell'),
(22, 'Dan Castellaneta'),
(23, 'Jim Parsons'),
(24, 'Benedict Cumberbatch'),
(25, 'Gabriel Macht'),
(26, 'Robert Downey Jr.'),
(27, 'Robert Downey Jr.'),
(28, 'Leonardo DiCaprio'), 
(29, 'John Cena'),
(30, 'Christian Bale');    


INSERT INTO cinema_db
(title_id, title, release_year, duration, imdb_rating, category_id, genre_id, actor_id) VALUES
(1,  'The Godfather',        1972, 175, 9.2, 1, 1, 1),
(2,  'The Dark Knight',      2008, 152, 9.0, 1, 2, 2),
(3,  'Forrest Gump',         1994, 142, 8.8, 1, 1, 3),
(4,  'Inception',            2010, 148, 8.8, 1, 4, 4),
(5,  'Fight Club',           1999, 139, 8.8, 1, 1, 5),
(6,  'The Matrix',           1999, 136, 8.7, 1, 5, 6),
(7,  'Goodfellas',           1990, 146, 8.7, 1, 1, 7),
(8,  'The Lord of the Rings',2003, 201, 9.0, 1, 6, 8),
(9,  'Stranger Things',      2016, 50,  8.7, 2, 1, 9),
(10, 'Squid Games',          2021, 55,  8.0, 3, 5, 10),
(11, 'Breaking Bad',         2008, 47,  9.5, 2, 1, 11),
(12, 'Game of Thrones',      2011, 57,  9.2, 2, 6, 12),
(13, 'Chernobyl',            2019, 65,  9.4, 2, 1, 13),
(14, 'Narcos',               2015, 49,  8.8, 3, 1, 14),
(15, 'Dark',                 2017, 53,  8.8, 3, 5, 15),
(16, 'Peaky Blinders',       2013, 55,  8.8, 2, 1, 16),
(17, 'Money Heist',          2017, 45,  8.2, 3, 4, 17),
(18, 'Dexter',               2006, 50,  8.7, 2, 4, 18),
(19, 'The Mentalist',        2008, 43,  8.1, 2, 1, 19),
(20, 'Friends',              1994, 22,  8.9, 2, 3, 20),
(21, 'The Office',           2005, 22,  9.0, 2, 3, 21),
(22, 'The Simpsons',         1989, 22,  8.7, 2, 3, 22),
(23, 'The Big Bang Theory',  2007, 22,  8.2, 2, 3, 23),
(24, 'Sherlock',             2010, 88,  9.1, 2, 4, 24),
(25, 'Suits',                2011, 44,  8.5, 2, 1, 25),
(26, 'Avengers',             2012, 143, 8.0, 1, 2, 26),
(27, 'Iron Man',             2008, 126, 7.9, 1, 2, 26),
(28, 'The Wolf of Wall Street',2013,180,8.2,1,1,28),
(29, 'WWE',                  2000, 180, 7.0, 4, 2, 29),
(30, 'American Psycho',      2000, 102, 7.6, 1, 4, 30);


INSERT INTO users (user_id, username, email) VALUES
(1, 'Rasha Kakar', 'rkakar29@gmail.com'),
(2, 'Vaibhav Bava', 'vaibhav.bx94@gmail.com'),
(3, 'Heer Bhatia', 'heer.b88@gmail.com'),
(4, 'Kashvi Char', 'kchar123@gmail.com'),
(5, 'Vaibhav Dewan', 'v.dewan67@gmail.com'),
(6, 'Rati Sanghvi', 'ratisanghvi04@gmail.com'),
(7, 'Navya Sankaran', 'nsank.22@gmail.com'),
(8, 'Chirag Cherian', 'chirag_99@gmail.com'),
(9, 'Hridaan Deo', 'hrid.deo77@gmail.com'),
(10, 'Taran Choudhary', 'taran_c24@gmail.com'),
(11, 'Vritika Sangha', 'vriti.san59@gmail.com'),
(12, 'Eva Dass', 'eva.dass09@gmail.com'),
(13, 'Ritvik Kalla', 'rkalla981@gmail.com'),
(14, 'Mishti Dixit', 'm.dixit32@gmail.com'),
(15, 'Ayesha Andra', 'ayeshaa77@gmail.com'),
(16, 'Sana Kibe', 'sana.k456@gmail.com'),
(17, 'Lakshit Madan', 'lakshitm92@gmail.com'),
(18, 'Shayak Anne', 'shayak.an76@gmail.com'),
(19, 'Shalv Banik', 'shalvxb12@gmail.com'),
(20, 'Nirvaan Srinivasan', 'nirvaansri@gmail.com'),
(21, 'Sumer Kakar', 'sumerk121@gmail.com'),
(22, 'Biju Jaggi', 'bijujagg33@gmail.com'),
(23, 'Hiran Kakar', 'h.kakar20@gmail.com'),
(24, 'Badal Sachdev', 'badalsach_71@gmail.com'),
(25, 'Yakshit Zacharia', 'yzach987@gmail.com'),
(26, 'Aarna Sarin', 'aarna.s25@gmail.com'),
(27, 'Kavya Shah', 'kavsha_83@gmail.com'),
(28, 'Bhavin Kumar', 'bhavin.k98@gmail.com'),
(29, 'Jiya Dasgupta', 'j.dasgupta01@gmail.com'),
(30, 'Oorja Sehgal', 'oorja_45@gmail.com'),
(31, 'Amira Dugar', 'am.dugar76@gmail.com'),
(32, 'Hansh Ghosh', 'hanshg11@gmail.com'),
(33, 'Nitya Taneja', 'nitya.t90@gmail.com'),
(34, 'Emir Sharaf', 'esharaf97@gmail.com'),
(35, 'Ojas Zachariah', 'ojas.z23@gmail.com'),
(36, 'Navya Deep', 'navdeep122@gmail.com'),
(37, 'Prisha Zacharia', 'prisha.z55@gmail.com'),
(38, 'Ryan Gopal', 'rgopal78@gmail.com'),
(39, 'Miraan Venkatesh', 'miraanv94@gmail.com'),
(40, 'Priyansh Buch', 'pbuch19@gmail.com'),
(41, 'Ryan Tara', 'ryan.t24@gmail.com'),
(42, 'Trisha Dewan', 'trishad567@gmail.com'),
(43, 'Farhan Vyas', 'farhanv01@gmail.com'),
(44, 'Kimaya Kalla', 'kimaya.k99@gmail.com'),
(45, 'Kashvi Chandran', 'kashvi.c74@gmail.com'),
(46, 'Tejas Kale', 'tejas.kale78@gmail.com'),
(47, 'Shaan Jaggi', 'shaanj88@gmail.com'),
(48, 'Parinaaz Shere', 'p.shere60@gmail.com'),
(49, 'Anahita Kant', 'anahita.k84@gmail.com'),
(50, 'Nirvi Basak', 'nirvi.b64@gmail.com');


INSERT INTO ratings (rating_id, user_id, title_id, rating, review, rating_date) VALUES
(1, 48, 14, 9.7, 'Narcos delivered a gripping portrayal of the drug trade with outstanding performances.', '2023-12-23'),
(2, 10, 8, 9.0, 'The Lord of the Rings immerses you in a richly detailed fantasy world that never gets old.', '2024-11-15'),
(3, 34, 1, 5.0, 'The Godfather is undeniably a classic, but its slow pacing tested my patience.', '2024-01-24'),
(4, 4, 27, 1.2, 'Iron Man felt underwhelming and didn’t live up to the hype for me.', '2025-04-15'),
(5, 7, 17, 2.8, 'Money Heist’s plot twists became too predictable after a while.', '2025-03-29'),
(6, 10, 2, 8.3, 'The Dark Knight offers unforgettable performances and a dark, compelling story.', '2024-05-01'),
(7, 22, 19, 4.3, 'The Mentalist had potential but felt formulaic during later seasons.', '2025-02-03'),
(8, 38, 9, 3.5, 'Stranger Things had an exciting start but struggled to maintain momentum.', '2024-02-26'),
(9, 18, 5, 5.6, 'Fight Club’s concept is intriguing but execution left me wanting more.', '2023-11-30'),
(10, 34, 29, 4.8, 'WWE is entertaining, though the scripted nature reduces its authenticity.', '2025-01-14'),
(11, 17, 23, 6.5, 'The Big Bang Theory is lighthearted and fun, though sometimes repetitive.', '2025-06-25'),
(12, 32, 4, 7.7, 'Inception’s complex narrative is fascinating, but can be confusing on a first watch.', '2024-01-24'),
(13, 13, 19, 3.2, 'The Mentalist started strong but lost its spark over time.', '2024-11-11'),
(14, 41, 3, 3.7, 'Forrest Gump is sweet, but felt a bit too sentimental at times.', '2024-12-15'),
(15, 46, 16, 8.7, 'Peaky Blinders blends style and substance in a gripping storyline.', '2024-11-20'),
(16, 26, 12, 8.7, 'Game of Thrones combines epic storytelling with complex characters, despite its flaws.', '2024-03-27'),
(17, 10, 28, 7.5, 'The Wolf of Wall Street is wild and energetic, though occasionally excessive.', '2024-11-11'),
(18, 46, 2, 6.9, 'The Dark Knight impressed me, but some scenes felt a bit slow.', '2024-03-16'),
(19, 10, 21, 4.5, 'The Office has hilarious moments but can be hit or miss depending on the episode.', '2025-02-03'),
(20, 34, 11, 4.2, 'Breaking Bad’s slow build is rewarding, but it took time to hook me.', '2024-10-03'),
(21, 10, 6, 7.7, 'The Matrix combines philosophy and action in a way few films do.', '2024-07-25'),
(22, 34, 8, 2.4, 'The Lord of the Rings felt overly lengthy and sometimes dragged.', '2024-01-21'),
(23, 23, 27, 3.4, 'Iron Man was enjoyable but lacked the depth I expected.', '2025-03-21'),
(24, 13, 24, 1.9, 'Sherlock’s brilliance is overshadowed by its limited number of episodes.', '2024-07-30'),
(25, 36, 30, 9.5, 'American Psycho is a chilling and unforgettable psychological thriller.', '2025-03-18'),
(26, 34, 26, 8.6, 'Avengers is a thrilling ensemble that successfully balances many characters.', '2024-08-21'),
(27, 8, 6, 8.3, 'The Matrix revolutionized sci-fi with its groundbreaking effects and story.', '2025-05-19'),
(28, 45, 14, 4.2, 'Narcos has gritty storytelling but lost me after the first season.', '2025-01-23'),
(29, 10, 25, 6.5, 'Suits entertains with sharp dialogue and charismatic leads.', '2024-05-25'),
(30, 48, 18, 9.9, 'Dexter is a fascinating dive into the mind of a complex anti-hero.', '2023-11-16'),
(31, 6, 20, 9.1, 'Friends never fails to bring laughter and comfort.', '2024-06-23'),
(32, 25, 7, 9.2, 'Goodfellas is a masterclass in mob movie storytelling.', '2024-12-22'),
(33, 30, 10, 3.7, 'Squid Games has an interesting premise but lacks depth in parts.', '2024-09-24'),
(34, 29, 8, 3.8, 'The Lord of the Rings is visually impressive but feels drawn out.', '2024-07-23'),
(35, 10, 6, 5.8, 'The Matrix introduced exciting ideas but didn’t fully engage me.', '2025-02-21'),
(36, 36, 30, 5.1, 'American Psycho is unsettling but artistically compelling.', '2024-12-17'),
(37, 41, 21, 8.8, 'The Office balances heart and humor perfectly.', '2024-12-28'),
(38, 22, 13, 4.3, 'Chernobyl’s intense atmosphere is not for the fainthearted.', '2025-04-18'),
(39, 42, 9, 3.7, 'Stranger Things is nostalgic but sometimes relies too much on pastiche.', '2023-08-04'),
(40, 31, 14, 2.6, 'Narcos lacked character development in later episodes.', '2024-06-22'),
(41, 12, 26, 5.0, 'Avengers is an action-packed but somewhat predictable superhero mashup.', '2025-04-09'),
(42, 17, 17, 6.6, 'Money Heist started strong but the story lost focus.', '2024-02-27'),
(43, 8, 22, 3.6, 'The Simpsons’ magic faded after the early seasons.', '2025-01-03'),
(44, 33, 17, 3.5, 'Money Heist felt repetitive and lacked original ideas.', '2025-01-01'),
(45, 23, 4, 4.1, 'Inception’s ambitious story can be hard to follow.', '2024-04-06'),
(46, 13, 15, 9.9, 'Dark’s time travel narrative is one of the most clever I’ve seen.', '2024-06-01'),
(47, 48, 24, 4.1, 'Sherlock’s mysteries are intricate, but I wanted more episodes.', '2024-01-10'),
(48, 3, 23, 9.8, 'The Big Bang Theory is a witty and lighthearted sitcom.', '2024-06-16'),
(49, 4, 23, 3.1, 'The Big Bang Theory’s humor grew stale for me over time.', '2024-06-14'),
(50, 2, 1, 2.6, 'The Godfather’s slow burn wasn’t my style.', '2025-03-16'),
(51, 6, 7, 8.8, 'Goodfellas offers a fast-paced and thrilling story.', '2025-06-24'),
(52, 30, 15, 4.0, 'Dark is intriguing but can be confusing.', '2023-11-27'),
(53, 9, 23, 5.4, 'The Big Bang Theory is entertaining if you enjoy quirky characters.', '2024-01-31'),
(54, 16, 28, 5.6, 'The Wolf of Wall Street is energetic though at times overwhelming.', '2024-11-30'),
(55, 28, 21, 4.5, 'The Office’s mockumentary style is hit or miss for me.', '2024-06-09'),
(56, 21, 21, 3.1, 'The Office’s humor feels dated in parts.', '2024-02-16'),
(57, 41, 7, 5.6, 'Goodfellas offers solid performances but lacks depth.', '2023-09-04'),
(58, 9, 17, 5.6, 'Money Heist’s early episodes hooked me, but later ones disappointed.', '2023-10-03'),
(59, 13, 1, 9.6, 'The Godfather is timeless and exceptional in every way.', '2023-10-01'),
(60, 48, 5, 7.9, 'Fight Club offers a thought-provoking look at modern society.', '2024-04-27'),
(61, 19, 19, 7.0, 'The Mentalist’s mysteries kept me intrigued throughout.', '2025-07-07'),
(62, 19, 12, 9.2, 'Game of Thrones’ complex characters and drama are captivating.', '2024-08-26'),
(63, 12, 30, 2.3, 'American Psycho was disturbing beyond my taste.', '2024-06-15'),
(64, 26, 18, 7.4, 'Dexter’s portrayal of a dark hero is compelling and unique.', '2024-03-06'),
(65, 27, 28, 7.6, 'The Wolf of Wall Street’s energy and style kept me engaged.', '2025-06-04'),
(66, 2, 5, 9.7, 'Fight Club remains a cult classic with a powerful message.', '2025-06-04'),
(67, 29, 15, 7.2, 'Dark’s storytelling is complex but ultimately rewarding.', '2023-08-22'),
(68, 5, 28, 4.1, 'The Wolf of Wall Street dragged too much on in parts.', '2023-12-07'),
(69, 46, 28, 8.4, 'The Wolf of Wall Street is wild and captivating.', '2024-08-01'),
(70, 32, 12, 6.2, 'Game of Thrones is impressive but falters late.', '2025-01-20'),
(71, 8, 12, 5.2, 'Game of Thrones didn’t meet my expectations in the later seasons.', '2024-11-05'),
(72, 16, 4, 9.0, 'Inception’s mind-bending plot is a joy to unpack.', '2024-03-13'),
(73, 48, 25, 9.2, 'Suits is smart and full of witty banter.', '2025-06-14'),
(74, 36, 11, 5.7, 'Breaking Bad took time to build momentum, but it was worth it.', '2023-09-30'),
(75, 31, 2, 6.5, 'The Dark Knight delivers thrilling action and great performances.', '2023-09-13'),
(76, 37, 7, 7.9, 'Goodfellas is a stylish and exciting gangster film.', '2024-07-13'),
(77, 32, 15, 2.7, 'Dark’s complexity made it hard for me to follow.', '2025-07-04'),
(78, 33, 3, 4.9, 'Forrest Gump is sweet but overly sentimental.', '2024-01-10'),
(79, 20, 22, 3.5, 'The Simpsons’ later seasons lose much of their charm.', '2023-09-26'),
(80, 36, 21, 3.3, 'The Office wasn’t quite my humor style.', '2024-07-29'),
(81, 7, 19, 3.7, 'The Mentalist is okay for casual viewing.', '2024-01-25'),
(82, 26, 15, 4.7, 'Dark’s storyline was a bit too convoluted.', '2024-05-15'),
(83, 33, 2, 7.6, 'The Dark Knight is one of the best superhero films.', '2023-11-30'),
(84, 25, 30, 8.3, 'American Psycho is haunting and brilliantly acted.', '2024-10-01'),
(85, 22, 2, 9.7, 'The Dark Knight stands the test of time beautifully.', '2024-03-17'),
(86, 14, 9, 5.7, 'Stranger Things has nostalgic charm but falters in pacing.', '2025-05-26'),
(87, 23, 14, 9.0, 'Narcos delivers authentic and gripping storytelling.', '2025-01-12'),
(88, 35, 13, 2.0, 'Chernobyl’s grim subject matter made it tough to watch.', '2024-10-29'),
(89, 22, 29, 6.1, 'WWE is fun entertainment if you suspend disbelief.', '2025-05-18'),
(90, 36, 10, 8.2, 'Squid Games is tense and thought-provoking.', '2023-12-25'),
(91, 10, 8, 8.0, 'The Lord of the Rings is a masterpiece of fantasy cinema.', '2024-11-28'),
(92, 2, 16, 9.1, 'Peaky Blinders is stylish and compelling storytelling.', '2023-08-22'),
(93, 4, 18, 8.1, 'Dexter offers an intriguing take on morality and justice.', '2024-07-25'),
(94, 4, 26, 8.4, 'Avengers is a satisfying culmination of many stories.', '2025-06-13'),
(95, 9, 3, 5.0, 'Forrest Gump is endearing but not my favorite.', '2025-04-06'),
(96, 44, 2, 4.2, 'The Dark Knight didn’t quite meet expectations for me.', '2024-11-29'),
(97, 4, 8, 3.1, 'The Lord of the Rings has great visuals but is too long.', '2023-10-17'),
(98, 48, 19, 4.4, 'The Mentalist had some clever moments but became stale.', '2024-11-08'),
(99, 43, 27, 7.3, 'Iron Man was a solid start to the MCU.', '2023-10-02'),
(100, 6, 25, 8.0, 'Suits offers sharp writing and engaging characters.', '2024-08-27');

-- ----------------------------------------------------------| Describing the tables by using DISCRIBE Statement|-----------------------------------------------------------------------------


desc actors;
desc categories;
desc genres;
desc cinema_db;
desc ratings;
desc users;


-- ------------------------------------------------------------| Showing the Tables by using SELECT Statement |----------------------------------------------------------------------------------


select * from actors;
select * from categories;
select * from genres;
select * from cinema_db;
select * from ratings;
select * from users;


-- -------------------------------------------------------------------------| SubQueries |-----------------------------------------------------------------------------

-- Q1. Titles with ratings above overall average rating
SELECT title
FROM cinema_db
WHERE title_id IN (
    SELECT title_id
    FROM ratings
    WHERE rating > (SELECT AVG(rating) FROM ratings)
);

-- Q2. Titles that received the highest rating by any user
SELECT title
FROM cinema_db
WHERE title_id IN (
    SELECT title_id
    FROM ratings
    WHERE rating = (SELECT MAX(rating) FROM ratings)
);

-- Q3. Users who gave any rating below 3
SELECT username
FROM users
WHERE user_id IN (
    SELECT user_id FROM ratings WHERE rating < 3
);

-- Q4. Titles rated by users who only gave ratings above 7
SELECT title
FROM cinema_db
WHERE title_id IN (
    SELECT DISTINCT title_id
    FROM ratings
    WHERE user_id IN (
        SELECT user_id FROM ratings
        GROUP BY user_id
        HAVING MIN(rating) > 7
    )
);

-- Q5. Titles that share the same genre as 'Inception'
SELECT title
FROM cinema_db
WHERE genre_id = (
    SELECT genre_id
    FROM cinema_db
    WHERE title = 'Inception'
);

-- Q.6 Titles that have never received a rating below 5
SELECT title
FROM cinema_db
WHERE title_id IN (
    SELECT title_id
    FROM ratings
    GROUP BY title_id
    HAVING MIN(rating) >= 5
);
-- -------------------------------------------------------------------------| JOINS |-----------------------------------------------------------------------------

-- Q1. Find titles with average rating above the overall average rating
SELECT 
    c.title,
    ROUND(AVG(r.rating),1) AS avg_user_rating
FROM cinema_db c
JOIN ratings r 
    ON c.title_id = r.title_id
GROUP BY c.title
HAVING AVG(r.rating) > (SELECT AVG(rating) FROM ratings)
ORDER BY avg_user_rating DESC;

-- Q2. Number of titles per category and their average IMDb rating
SELECT cat.category_name,
       COUNT(c.title_id) AS total_titles,
       ROUND(AVG(c.imdb_rating),1) AS avg_imdb_rating
FROM categories cat
JOIN cinema_db c ON cat.category_id = c.category_id
GROUP BY cat.category_name
ORDER BY total_titles DESC;

-- Q3. Top 3 titles by average user rating
SELECT c.title,
       ROUND(AVG(r.rating),1) AS avg_rating
FROM cinema_db c
JOIN ratings r ON c.title_id = r.title_id
GROUP BY c.title
ORDER BY avg_rating DESC
LIMIT 3;

-- Q4. List all titles along with their lead actor
SELECT 
    c.title,
    a.actor_name AS lead_actor
FROM cinema_db c
JOIN actors a ON c.actor_id = a.actor_id
ORDER BY c.title;




-- ----------------------------------------------------------------| Mixed question(Joins & Subqueries)for data analytics |------------------------------------------------------------------------------------


-- Q1. List all titles with their genre and category, with actors
SELECT 
    c.title,
    cat.category_name,
    g.genre_name,
    a.actor_name
FROM cinema_db c
JOIN categories cat ON c.category_id = cat.category_id
JOIN genres g ON c.genre_id = g.genre_id
JOIN actors a ON c.actor_id = a.actor_id
ORDER BY c.title, g.genre_name;

-- Q2. Get all ratings along with username and title names
SELECT 
    u.username,
    c.title,
    r.rating,
    r.review
FROM ratings r
JOIN users u ON r.user_id = u.user_id
JOIN cinema_db c ON r.title_id = c.title_id;

-- Q3. Get average rating per genre
SELECT 
    g.genre_name, 
    ROUND(AVG(r.rating), 1) AS avg_rating
FROM ratings r
JOIN cinema_db c ON r.title_id = c.title_id
JOIN genres g ON c.genre_id = g.genre_id
GROUP BY g.genre_name
ORDER BY avg_rating DESC;

-- Q4. List titles where average rating is above overall average rating, including category name
SELECT 
    c.title,
    cat.category_name,
    ROUND(AVG(r.rating),1) AS avg_rating
FROM cinema_db c
JOIN ratings r ON c.title_id = r.title_id
JOIN categories cat ON c.category_id = cat.category_id
GROUP BY c.title, cat.category_name
HAVING AVG(r.rating) > (SELECT AVG(rating) FROM ratings)
ORDER BY avg_rating DESC;

-- Q5. Find the genre with the highest average IMDb rating
SELECT 
    g.genre_name,
    ROUND(AVG(c.imdb_rating),1) AS avg_imdb_rating
FROM genres g
JOIN cinema_db c ON g.genre_id = c.genre_id
GROUP BY g.genre_name
ORDER BY avg_imdb_rating DESC
LIMIT 1;

-- Q6. List users who rated 7.5 or more to any title
SELECT DISTINCT 
    u.username,
    r.rating,
    c.title
FROM ratings r
JOIN users u ON r.user_id = u.user_id
JOIN cinema_db c ON r.title_id = c.title_id
WHERE r.rating >= 7.5
ORDER BY r.rating DESC;

        



        
        
        
        
        
        
        


























