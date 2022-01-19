DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  username TEXT,
  email TEXT,
  address TEXT,
);

CREATE TABLE followers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  followed_user_id INTEGER
  follower_id INTEGER
);

CREATE TABLE followed (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  followed_user_id INTEGER
  follower_id INTEGER
);

CREATE TABLE photos (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  file_name TEXT
  uploaded_time TEXT
);

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  photo_id INTEGER,
  caption TEXT,
  created_on TEXT,
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  post_id INTEGER,
  created_on TEXT,
  active INTEGER
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  post_id INTEGER,
  created_on TEXT,
  message TEXT,
);

CREATE TABLE feed (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  followed_user_id INTEGER
);


