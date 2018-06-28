-- table for users
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
);

-- joining friends table between users
CREATE TABLE IF NOT EXISTS users_users (
    id SERIAL PRIMARY KEY,
    user1_id integer,
    user2_id integer,
    friendDate timestamp default current_timestamp
);

-- table for posts
CREATE TABLE IF NOT EXISTS posts (
    id SERIAL PRIMARY KEY,
    postType TEXT,
    textContent TEXT,
    postLink TEXT,
    postDate timestamp default current_timestamp
);

-- table for likes
CREATE TABLE IF NOT EXISTS likes (
    id SERIAL PRIMARY KEY,
    likeDate timestamp default current_timestamp,
    posts_id integer,
    comments_id integer,
    users_id integer
);

-- table for comments
CREATE TABLE IF NOT EXISTS comments (
    id SERIAL PRIMARY KEY,
    commentDate timestamp default current_timestamp,
    posts_id integer,
    comments_id integer,
    textContent TEXT,
    users_id integer
);

-- table for groups
CREATE TABLE IF NOT EXISTS groups (
    id SERIAL PRIMARY KEY,
    name TEXT,
    creatorId_users_id integer
);

-- joining table for groupMembers
CREATE TABLE IF NOT EXISTS groups_users (
    groups_id integer,
    memberId_users_id integer
);

-- table for list of groupChats
CREATE TABLE IF NOT EXISTS groupChats (
    id SERIAL PRIMARY KEY,
    name TEXT
);


-- joining table for list of groupChats
CREATE TABLE IF NOT EXISTS groupChats_users (
    groupChats_id integer,
    users_id integer
);

-- table for list of messages
CREATE TABLE IF NOT EXISTS messages (
    id SERIAL PRIMARY KEY,
    groupChats_id integer,
    sender_id integer,
    textContent TEXT,
    timeSent timestamp default current_timestamp
);

