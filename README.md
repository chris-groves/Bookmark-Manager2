# Bookmark-manager-day2

Specification:

The website will have the following specification:

Show a list of bookmarks
Add new bookmarks
Delete bookmarks
Update bookmarks
Comment on bookmarks
Tag bookmarks into categories
Filter bookmarks by tag
Users are restricted to manage only their own bookmarks



User stories:

1) As a user,
so that I can access websites I marked
I would like to see a list of bookmarks

2) As a user,
so I can return to my favourite websites
I would like to add a new bookmark to the list of bookmarks

Database setup:

```
$> psql
admin=# CREATE DATABASE "bookmark-manager";
admin=# \c bookmark-manager;
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
admin=# INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com'), ('http://www.google.com'), ('http://destroyallsoftware.com');
```

Test Database setup:

```
admin=# CREATE DATABASE bookmark_manager_test;
admin=# \c bookmark-manager_test;
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));


Install TablePlus
From: https://tableplus.io/
