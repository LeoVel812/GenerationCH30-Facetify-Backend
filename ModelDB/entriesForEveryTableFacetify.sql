use facetifydb;
-- entries to TABLE users
INSERT INTO users (fullname, email, cellphone, password) VALUES
('John Doe', 'john.doe@email.com', '1234567890', 'password1'),
('Jane Smith', 'jane.smith@email.com', '9876543210', 'password2'),
('Alice Johnson', 'alice.johnson@email.com', '5551234567', 'password3'),
('Bob Wilson', 'bob.wilson@email.com', '9998887777', 'password4'),
('Eva Davis', 'eva.davis@email.com', '1112223333', 'password5'),
('Michael Lee', 'michael.lee@email.com', '3334445555', 'password6'),
('Sara Brown', 'sara.brown@email.com', '7778889999', 'password7'),
('David Garcia', 'david.garcia@email.com', '4445556666', 'password8'),
('Sophia Martinez', 'sophia.martinez@email.com', '6667778888', 'password9'),
('Daniel Wilson', 'daniel.wilson@email.com', '2221110000', 'password10');

-- entries to TABLE profile
INSERT INTO profile (rol, biography, photo, fk_user_id) VALUES
('Singer', 'I am a professional singer.', 'singer.jpg', 1),
('Guitarist', 'I play the guitar in a rock band.', 'guitarist.jpg', 2),
('Drummer', "I'm a drummer in a jazz ensemble.", 'drummer.jpg', 3),
('Pianist', 'I play classical piano music.', 'pianist.jpg', 4),
('Bassist', "I'm a bassist in a funk band.", 'bassist.jpg', 5),
('DJ', "I'm a DJ and electronic music producer.", 'dj.jpg', 6),
('Violinist', 'I play the violin in a chamber orchestra.', 'violinist.jpg', 7),
('Rapper', "I'm a rapper and lyricist.", 'rapper.jpg', 8),
('Producer', 'I produce music in my studio.', 'producer.jpg', 9),
('Musician', "I'm a versatile musician.", 'musician.jpg', 10);

-- entries to TABLE profile_has_publications
INSERT INTO profile_has_publications (profile_id, publications_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- entries to TABLE publications
INSERT INTO publications (title, footer, img, events_details) VALUES
("Concert Announcement", "Join us for an amazing concert!", "concert.jpg", "Join us for a night of live music featuring top artists from around the world. Date: September 30, 2023. Venue: Music Hall. Tickets available now."),
("New Album Release", "Check out our latest music!", "album.jpg", "We are excited to announce the release of our new album 'Harmony' on October 15, 2023. Pre-order now and be the first to listen."),
("Music Festival 2023", "The biggest music festival of the year!", "festival.jpg", "Get ready for MusicFest 2023, featuring a lineup of over 50 artists across various genres. Dates: November 10-12, 2023. Don't miss it!"),
("Artist Spotlight", "Discover the talent of the month", "artist.jpg", "This month, we shine the spotlight on the talented singer-songwriter Sarah Davis. Learn more about her journey and music."),
("Guitar Workshop", "Master your guitar skills", "guitar.jpg", "Join our guitar workshop series and enhance your guitar playing abilities. Learn from experts and jam with fellow musicians."),
("Music History Lecture", "Exploring the roots of music", "lecture.jpg", "Attend our music history lecture series, where we delve into the origins and evolution of music across cultures and eras."),
("Songwriting Contest", "Showcase your songwriting skills", "songwriting.jpg", "Enter our annual songwriting contest for a chance to win prizes and have your music heard by industry professionals."),
("Drumming Masterclass", "Elevate your drumming technique", "drumming.jpg", "Join our drumming masterclass led by renowned percussionist Mike Smith. Improve your rhythm and groove."),
("Jazz Night", "An evening of jazz classics", "jazz.jpg", "Experience an enchanting night of jazz music with our live band. Date: October 5, 2023. Venue: Jazz Lounge. Book your table now."),
("Music Production Workshop", "Learn the art of music production", "production.jpg", "Take part in our music production workshop and explore the world of recording, mixing, and producing music.");
