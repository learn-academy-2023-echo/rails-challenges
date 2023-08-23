Last login: Thu Aug 17 14:52:42 on ttys001
learnacademy@MacBook-Air-2 rails-migrations % rails c
Loading development environment (Rails 7.0.7)
3.2.0 :001 > Movie.all
  Movie Load (1.0ms)  SELECT "movies".* FROM "movies"
 => [] 
3.2.0 :002 > Movie.create(title: "Cast Away", category: "drama", rating: "4 star
s", run_time: 95)
  TRANSACTION (0.1ms)  BEGIN
  Movie Create (2.3ms)  INSERT INTO "movies" ("category", "rating", "run_time", "created_at", "updated_at", "title") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["category", "drama"], ["rating", "4 stars"], ["run_time", 95], ["created_at", "2023-08-17 22:00:42.433176"], ["updated_at", "2023-08-17 22:00:42.433176"], ["title", "Cast Away"]]
  TRANSACTION (0.4ms)  COMMIT
 => 
#<Movie:0x00000001061f5d18
 id: 1,
 category: "drama",
 rating: "4 stars",
 run_time: 95,
 created_at: Thu, 17 Aug 2023 22:00:42.433176000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:00:42.433176000 UTC +00:00,
 title: "Cast Away"> 
3.2.0 :003 > Movie.create(title: "Shrek", category: "animated", rating: "300 sta
rs", run_time: 120)
  TRANSACTION (0.2ms)  BEGIN
  Movie Create (12.0ms)  INSERT INTO "movies" ("category", "rating", "run_time", "created_at", "updated_at", "title") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["category", "animated"], ["rating", "300 stars"], ["run_time", 120], ["created_at", "2023-08-17 22:01:45.188203"], ["updated_at", "2023-08-17 22:01:45.188203"], ["title", "Shrek"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Movie:0x0000000106577310
 id: 2,
 category: "animated",
 rating: "300 stars",
 run_time: 120,
 created_at: Thu, 17 Aug 2023 22:01:45.188203000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:01:45.188203000 UTC +00:00,
 title: "Shrek"> 
3.2.0 :004 > Movie.create(title: "Nope", category: "thriller", rating: "3 stars"
, run_time: 110)
  TRANSACTION (0.2ms)  BEGIN
  Movie Create (0.6ms)  INSERT INTO "movies" ("category", "rating", "run_time", "created_at", "updated_at", "title") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["category", "thriller"], ["rating", "3 stars"], ["run_time", 110], ["created_at", "2023-08-17 22:02:33.673327"], ["updated_at", "2023-08-17 22:02:33.673327"], ["title", "Nope"]]
  TRANSACTION (0.5ms)  COMMIT
 => 
#<Movie:0x000000010671b400
 id: 3,
 category: "thriller",
 rating: "3 stars",
 run_time: 110,
 created_at: Thu, 17 Aug 2023 22:02:33.673327000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:02:33.673327000 UTC +00:00,
 title: "Nope"> 
3.2.0 :005 > Movie.create(title: "Arrival", category: "sci-fi", rating: "4 stars
", run_time: 120)
  TRANSACTION (0.4ms)  BEGIN
  Movie Create (0.8ms)  INSERT INTO "movies" ("category", "rating", "run_time", "created_at", "updated_at", "title") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["category", "sci-fi"], ["rating", "4 stars"], ["run_time", 120], ["created_at", "2023-08-17 22:03:35.505107"], ["updated_at", "2023-08-17 22:03:35.505107"], ["title", "Arrival"]]
  TRANSACTION (0.3ms)  COMMIT
 => 
#<Movie:0x00000001066de9d8
 id: 4,
 category: "sci-fi",
 rating: "4 stars",
 run_time: 120,
 created_at: Thu, 17 Aug 2023 22:03:35.505107000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:03:35.505107000 UTC +00:00,
 title: "Arrival"> 
3.2.0 :006 > Movie.create(title: "Step Brothers", category: "comedy", rating: "5
 stars", run_time: 130)
  TRANSACTION (0.3ms)  BEGIN
  Movie Create (0.6ms)  INSERT INTO "movies" ("category", "rating", "run_time", "created_at", "updated_at", "title") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["category", "comedy"], ["rating", "5 stars"], ["run_time", 130], ["created_at", "2023-08-17 22:04:27.467256"], ["updated_at", "2023-08-17 22:04:27.467256"], ["title", "Step Brothers"]]
  TRANSACTION (0.7ms)  COMMIT
 => 
#<Movie:0x00000001066dcd18
 id: 5,
 category: "comedy",
 rating: "5 stars",
 run_time: 130,
 created_at: Thu, 17 Aug 2023 22:04:27.467256000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:04:27.467256000 UTC +00:00,
 title: "Step Brothers"> 
3.2.0 :007 > Movie.all
  Movie Load (0.4ms)  SELECT "movies".* FROM "movies"
 => 
[#<Movie:0x00000001067dd988
  id: 1,
  category: "drama",
  rating: "4 stars",
  run_time: 95,
  created_at: Thu, 17 Aug 2023 22:00:42.433176000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:00:42.433176000 UTC +00:00,
  title: "Cast Away">,
 #<Movie:0x00000001067dd848
  id: 2,
  category: "animated",
  rating: "300 stars",
  run_time: 120,
  created_at: Thu, 17 Aug 2023 22:01:45.188203000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:01:45.188203000 UTC +00:00,
  title: "Shrek">,
 #<Movie:0x00000001067dd708
  id: 3,
  category: "thriller",
  rating: "3 stars",
  run_time: 110,
  created_at: Thu, 17 Aug 2023 22:02:33.673327000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:02:33.673327000 UTC +00:00,
  title: "Nope">,
 #<Movie:0x00000001067dd5c8
  id: 4,
  category: "sci-fi",
  rating: "4 stars",
  run_time: 120,
  created_at: Thu, 17 Aug 2023 22:03:35.505107000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:03:35.505107000 UTC +00:00,
  title: "Arrival">,
 #<Movie:0x00000001067dd488
  id: 5,
  category: "comedy",
  rating: "5 stars",
  run_time: 130,
  created_at: Thu, 17 Aug 2023 22:04:27.467256000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:04:27.467256000 UTC +00:00,
  title: "Step Brothers">] 
3.2.0 :008 > exit
learnacademy@MacBook-Air-2 rails-migrations % rails c
Loading development environment (Rails 7.0.7)
3.2.0 :001 > Movie.all
  Movie Load (0.7ms)  SELECT "movies".* FROM "movies"
 => 
[#<Movie:0x0000000106fcfd80
  id: 1,
  category: "drama",
  rating: "4 stars",
  run_time: "95",
  created_at: Thu, 17 Aug 2023 22:00:42.433176000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:00:42.433176000 UTC +00:00,
  title: "Cast Away">,
 #<Movie:0x00000001070efa08
  id: 2,
  category: "animated",
  rating: "300 stars",
  run_time: "120",
  created_at: Thu, 17 Aug 2023 22:01:45.188203000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:01:45.188203000 UTC +00:00,
  title: "Shrek">,
 #<Movie:0x00000001070ef968
  id: 3,
  category: "thriller",
  rating: "3 stars",
  run_time: "110",
  created_at: Thu, 17 Aug 2023 22:02:33.673327000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:02:33.673327000 UTC +00:00,
  title: "Nope">,
 #<Movie:0x00000001070ef508
  id: 4,
  category: "sci-fi",
  rating: "4 stars",
  run_time: "120",
  created_at: Thu, 17 Aug 2023 22:03:35.505107000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:03:35.505107000 UTC +00:00,
  title: "Arrival">,
 #<Movie:0x00000001070ef468
  id: 5,
  category: "comedy",
  rating: "5 stars",
  run_time: "130",
  created_at: Thu, 17 Aug 2023 22:04:27.467256000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:04:27.467256000 UTC +00:00,
  title: "Step Brothers">] 
3.2.0 :002 > movie_one = Movie.find 1
  Movie Load (0.4ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
 => 
#<Movie:0x00000001075aeda0
... 
3.2.0 :003 > movie_one.update(run_time: "1hr 35min")
  TRANSACTION (0.4ms)  BEGIN
  Movie Update (3.3ms)  UPDATE "movies" SET "run_time" = $1, "updated_at" = $2 WHERE "movies"."id" = $3  [["run_time", "1hr 35min"], ["updated_at", "2023-08-17 22:11:48.076127"], ["id", 1]]
  TRANSACTION (1.0ms)  COMMIT
 => true 
3.2.0 :004 > Movie.first
  Movie Load (0.3ms)  SELECT "movies".* FROM "movies" ORDER BY "movies"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => 
#<Movie:0x0000000107ed94c0
 id: 1,
 category: "drama",
 rating: "4 stars",
 run_time: "1hr 35min",
 created_at: Thu, 17 Aug 2023 22:00:42.433176000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:11:48.076127000 UTC +00:00,
 title: "Cast Away"> 
3.2.0 :005 > movie_two = Movie.find 2
  Movie Load (0.4ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
 => 
#<Movie:0x0000000107edba40
... 
3.2.0 :006 > movie_two.update(run_time: "2hrs")
  TRANSACTION (12.2ms)  BEGIN
  Movie Update (0.5ms)  UPDATE "movies" SET "run_time" = $1, "updated_at" = $2 WHERE "movies"."id" = $3  [["run_time", "2hrs"], ["updated_at", "2023-08-17 22:12:59.462335"], ["id", 2]]
  TRANSACTION (3.1ms)  COMMIT
 => true 
3.2.0 :007 > movie_two
 => 
#<Movie:0x0000000107edba40
 id: 2,
 category: "animated",
 rating: "300 stars",
 run_time: "2hrs",
 created_at: Thu, 17 Aug 2023 22:01:45.188203000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:12:59.462335000 UTC +00:00,
 title: "Shrek"> 
3.2.0 :008 > movie_three = Movie.find 3
  Movie Load (0.4ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 3], ["LIMIT", 1]]
 => 
#<Movie:0x0000000107ed5140
... 
3.2.0 :009 > movie_three.update(run_time: "1hr 50min")
  TRANSACTION (0.2ms)  BEGIN
  Movie Update (0.4ms)  UPDATE "movies" SET "run_time" = $1, "updated_at" = $2 WHERE "movies"."id" = $3  [["run_time", "1hr 50min"], ["updated_at", "2023-08-17 22:13:42.973354"], ["id", 3]]
  TRANSACTION (0.6ms)  COMMIT
 => true 
3.2.0 :010 > movie_three
 => 
#<Movie:0x0000000107ed5140
 id: 3,
 category: "thriller",
 rating: "3 stars",
 run_time: "1hr 50min",
 created_at: Thu, 17 Aug 2023 22:02:33.673327000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:13:42.973354000 UTC +00:00,
 title: "Nope"> 
3.2.0 :011 > movie_four = Movie.find 4
  Movie Load (1.3ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 4], ["LIMIT", 1]]
 => 
#<Movie:0x0000000107edb040
... 
3.2.0 :012 > movie_four.update(run_time: "2hrs")
  TRANSACTION (0.2ms)  BEGIN
  Movie Update (0.4ms)  UPDATE "movies" SET "run_time" = $1, "updated_at" = $2 WHERE "movies"."id" = $3  [["run_time", "2hrs"], ["updated_at", "2023-08-17 22:14:15.188300"], ["id", 4]]
  TRANSACTION (0.6ms)  COMMIT
 => true 
3.2.0 :013 > movie_four
 => 
#<Movie:0x0000000107edb040
 id: 4,
 category: "sci-fi",
 rating: "4 stars",
 run_time: "2hrs",
 created_at: Thu, 17 Aug 2023 22:03:35.505107000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:14:15.188300000 UTC +00:00,
 title: "Arrival"> 
3.2.0 :014 > movie_five = Movie.find 5
  Movie Load (0.5ms)  SELECT "movies".* FROM "movies" WHERE "movies"."id" = $1 LIMIT $2  [["id", 5], ["LIMIT", 1]]
 => 
#<Movie:0x0000000107f93ac8
... 
3.2.0 :015 > movie_five.update(run_time: "2hrs 10min")
  TRANSACTION (0.1ms)  BEGIN
  Movie Update (0.3ms)  UPDATE "movies" SET "run_time" = $1, "updated_at" = $2 WHERE "movies"."id" = $3  [["run_time", "2hrs 10min"], ["updated_at", "2023-08-17 22:14:39.739022"], ["id", 5]]
  TRANSACTION (1.0ms)  COMMIT
 => true 
3.2.0 :016 > movie_five
 => 
#<Movie:0x0000000107f93ac8
 id: 5,
 category: "comedy",
 rating: "5 stars",
 run_time: "2hrs 10min",
 created_at: Thu, 17 Aug 2023 22:04:27.467256000 UTC +00:00,
 updated_at: Thu, 17 Aug 2023 22:14:39.739022000 UTC +00:00,
 title: "Step Brothers"> 
3.2.0 :017 > exit
learnacademy@MacBook-Air-2 rails-migrations % rails c
Loading development environment (Rails 7.0.7)
3.2.0 :001 > Movie.all
  Movie Load (0.4ms)  SELECT "movies".* FROM "movies"
 => 
[#<Movie:0x0000000105a6e338
  id: 1,
  genre: "drama",
  rating: "4 stars",
  run_time: "1hr 35min",
  created_at: Thu, 17 Aug 2023 22:00:42.433176000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:11:48.076127000 UTC +00:00,
  title: "Cast Away">,
 #<Movie:0x0000000105b8f780
  id: 2,
  genre: "animated",
  rating: "300 stars",
  run_time: "2hrs",
  created_at: Thu, 17 Aug 2023 22:01:45.188203000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:12:59.462335000 UTC +00:00,
  title: "Shrek">,
 #<Movie:0x0000000105b8f6e0
  id: 3,
  genre: "thriller",
  rating: "3 stars",
  run_time: "1hr 50min",
  created_at: Thu, 17 Aug 2023 22:02:33.673327000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:13:42.973354000 UTC +00:00,
  title: "Nope">,
 #<Movie:0x0000000105b8f3c0
  id: 4,
  genre: "sci-fi",
  rating: "4 stars",
  run_time: "2hrs",
  created_at: Thu, 17 Aug 2023 22:03:35.505107000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:14:15.188300000 UTC +00:00,
  title: "Arrival">,
 #<Movie:0x0000000105b8f320
  id: 5,
  genre: "comedy",
  rating: "5 stars",
  run_time: "2hrs 10min",
  created_at: Thu, 17 Aug 2023 22:04:27.467256000 UTC +00:00,
  updated_at: Thu, 17 Aug 2023 22:14:39.739022000 UTC +00:00,
  title: "Step Brothers">] 
3.2.0 :002 > 


Last login: Thu Aug 17 14:43:55 on ttys000
learnacademy@MacBook-Air-2 rails-migrations % rails generate migration AddColumnToMovie
      invoke  active_record
      create    db/migrate/20230817215538_add_column_to_movie.rb
learnacademy@MacBook-Air-2 rails-migrations % rails db:migrate
== 20230817215538 AddColumnToMovie: migrating =================================
-- add_column(:movies, :title, :string)
   -> 0.0175s
== 20230817215538 AddColumnToMovie: migrated (0.0176s) ========================

learnacademy@MacBook-Air-2 rails-migrations % rails generate migration change_run_time_on_movie
      invoke  active_record
      create    db/migrate/20230817220659_change_run_time_on_movie.rb
learnacademy@MacBook-Air-2 rails-migrations % rails db:migrate
== 20230817220659 ChangeRunTimeOnMovie: migrating =============================
-- change_column(:movies, :run_time, :string)
   -> 0.0231s
== 20230817220659 ChangeRunTimeOnMovie: migrated (0.0232s) ====================

learnacademy@MacBook-Air-2 rails-migrations % rails generate migration RenameColumnToMovie
      invoke  active_record
      create    db/migrate/20230817221727_rename_column_to_movie.rb
learnacademy@MacBook-Air-2 rails-migrations % rails db:migrate
== 20230817221727 RenameColumnToMovie: migrating ==============================
-- rename_column(:movies, :category, :genre)
   -> 0.0174s
== 20230817221727 RenameColumnToMovie: migrated (0.0175s) =====================

learnacademy@MacBook-Air-2 rails-migrations % 