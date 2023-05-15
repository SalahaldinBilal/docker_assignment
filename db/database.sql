CREATE DATABASE IF NOT EXISTS NewsDB;

USE NewsDB;

CREATE TABLE IF NOT EXISTS news (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(50),
  story VARCHAR(1000),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (ID)
);

INSERT INTO news (id, title, story) VALUES
  (1, 'News Title 1', 'Lorem ipsum dolor sit id.'),
  (2, 'News Title 2', 'Lorem ipsum dolor sit amet, consectetur tincidunt.'),
  (3, 'News Title 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed.'),
  (4, 'News Title 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque biam.'),
  (5, 'News Title 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras semper dui aenean.'),
  (6, 'News Title 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tristique malesuada nullam.'),
  (7, 'News Title 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in augue sit amet risus sodales laoreet.'),
  (8, 'News Title 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (9, 'News Title 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (10, 'News Title 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (11, 'News Title 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (12, 'News Title 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (13, 'News Title 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (14, 'News Title 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (15, 'News Title 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (16, 'News Title 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (17, 'News Title 17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (18, 'News Title 18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (19, 'News Title 19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.'),
  (20, 'News Title 20', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor euismod elementum. Vestibulum vel ligula a purus congue eleifend vitae et proin.');