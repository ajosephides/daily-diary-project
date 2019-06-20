/* create test database
*/
CREATE DATABASE daily_diary_test;
CREATE TABLE posts (id serial PRIMARY KEY, title VARCHAR(60), content VARCHAR(500));

