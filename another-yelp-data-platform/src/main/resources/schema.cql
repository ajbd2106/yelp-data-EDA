CREATE KEYSPACE IF NOT EXISTS yelp WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

USE yelp;

create table IF NOT EXISTS business(
   business_id text,
   name text,
   neighborhood text,
   address text,
   city text,
   state text,
   latitude double,
   longitude double,
   stars int,
   postal_code text,
   review_count bigint,
   is_open boolean,
   attributes text,
   categories text,
   hours text,
   PRIMARY KEY(business_id)
 );

create table IF NOT EXISTS review(
   review_id text,
   user_id text,
   business_id text,
   stars int,
   date text,
   text text,
   useful bigint,
   funny bigint,
   cool bigint,
   type text,
   PRIMARY KEY(review_id)
);

create table IF NOT EXISTS user(
   user_id text,
   name text,
   review_count bigint,
   yelping_since text,
   friends text,
   useful bigint,
   funny bigint,
   cool bigint,
   fans bigint,
   elite text,
   average_stars double,
   compliment_hot bigint,
   compliment_more bigint,
   compliment_profile bigint,
   compliment_cute bigint,
   compliment_list bigint,
   compliment_note bigint,
   compliment_plain bigint,
   compliment_cool bigint,
   compliment_funny bigint,
   compliment_writer bigint,
   compliment_photos bigint,
   type text,
   PRIMARY KEY(user_id)
);

create table IF NOT EXISTS checkin(
   time text,
   business_id text,
   PRIMARY KEY(business_id,time)
);

create table IF NOT EXISTS tip(
   text text,
   date text,
   likes bigint,
   business_id text,
   user_id text,
   type text,
   PRIMARY KEY(business_id,user_id)
);