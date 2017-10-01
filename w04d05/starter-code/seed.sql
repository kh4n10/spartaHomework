DROP TABLE IF EXISTS youtube_post;

CREATE TABLE youtube_post (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  url VARCHAR(255)

);

INSERT INTO video (title , description, url) VALUES ('Video 1' , 'description of video 1' , 'url for 1');
INSERT INTO video (title , description, url) VALUES ('Video 2' , 'description of video 2' , 'url for 2');
INSERT INTO video (title , description, url) VALUES ('Video 3' , 'description of video 3' , 'url for 3');
INSERT INTO video (title , description, url) VALUES ('Video 4' , 'description of video 4' , 'url for 4');